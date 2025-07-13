#include "vector_search.h"
#include <sstream>
#include <cmath>
#include <algorithm>
#include <regex>

std::vector<std::string> tokenize(const std::string& text) {
    std::vector<std::string> tokens;
    std::regex word_regex("\\b\\w+\\b");
    auto words_begin = std::sregex_iterator(text.begin(), text.end(), word_regex);
    auto words_end = std::sregex_iterator();
    for (std::sregex_iterator i = words_begin; i != words_end; ++i) {
        tokens.push_back(i->str());
    }
    return tokens;
}

Vector sentence_to_vector(const std::string& sentence, const EmbeddingMap& embeddings) {
    auto words = tokenize(sentence);
    Vector sum(2, 0.0);
    int count = 0;

    for (const auto& word : words) {
        auto it = embeddings.find(word);
        if (it != embeddings.end()) {
            sum[0] += it->second[0];
            sum[1] += it->second[1];
            ++count;
        }
    }

    if (count == 0) return Vector(2, 0.0);
    sum[0] /= count;
    sum[1] /= count;
    return sum;
}

double cosine_similarity(const Vector& vec1, const Vector& vec2) {
    double dot = vec1[0] * vec2[0] + vec1[1] * vec2[1];
    double norm1 = std::sqrt(vec1[0] * vec1[0] + vec1[1] * vec1[1]);
    double norm2 = std::sqrt(vec2[0] * vec2[0] + vec2[1] * vec2[1]);
    if (norm1 == 0 || norm2 == 0) return 0.0;
    return dot / (norm1 * norm2);
}

std::vector<std::pair<std::string, double>> vector_search(
    const std::string& query,
    const std::vector<std::string>& documents,
    const EmbeddingMap& embeddings,
    int top_k
) {
    Vector query_vec = sentence_to_vector(query, embeddings);
    std::vector<std::pair<std::string, double>> scored_docs;

    for (const auto& doc : documents) {
        Vector doc_vec = sentence_to_vector(doc, embeddings);
        double score = cosine_similarity(query_vec, doc_vec);
        if (score > 0.0)
            scored_docs.emplace_back(doc, score);
    }

    std::sort(scored_docs.begin(), scored_docs.end(), [](const auto& a, const auto& b) {
        return b.second < a.second;
    });

    if (scored_docs.size() > static_cast<size_t>(top_k)) {
        scored_docs.resize(top_k);
    }

    return scored_docs;
}

