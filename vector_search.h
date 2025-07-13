#ifndef VECTOR_SEARCH_H
#define VECTOR_SEARCH_H

#include <string>
#include <vector>
#include <unordered_map>

using Vector = std::vector<double>;
using EmbeddingMap = std::unordered_map<std::string, Vector>;

std::vector<std::string> tokenize(const std::string& text);
Vector sentence_to_vector(const std::string& sentence, const EmbeddingMap& embeddings);
double cosine_similarity(const Vector& vec1, const Vector& vec2);
std::vector<std::pair<std::string, double>> vector_search(
    const std::string& query,
    const std::vector<std::string>& documents,
    const EmbeddingMap& embeddings,
    int top_k = 3
);

#endif // VECTOR_SEARCH_H

