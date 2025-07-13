#include <iostream>
#include "vector_search.h"

int main() {
    std::vector<std::string> documents = {
        "Machine learning is powerful",
        "Artificial intelligence advances rapidly",
        "Deep learning transforms technology",
        "Data science drives innovation",
        "Neural networks power AI",
        "Artificial Intelligence (AI) is a broad field focused on creating machines that can perform tasks requiring human-like intelligence",
        "Machine Learning (ML) is a subset of AI that enables systems to learn from data and improve over time without being explicitly programmed",
        "Deep Learning, a branch of ML, uses neural networks with many layers to model complex patterns in large datasets",
        "AI applications include speech recognition, recommendation systems, and autonomous vehicles",
        "As data and computing power grow, AI and deep learning are becoming increasingly powerful and widely used"
    };

    EmbeddingMap word_embeddings = {
        {"machine", {0.8, 0.2}},
        {"learning", {0.7, 0.3}},
        {"powerful", {0.6, 0.4}},
        {"artificial", {0.9, 0.1}},
        {"intelligence", {0.85, 0.15}},
        {"advances", {0.5, 0.5}},
        {"rapidly", {0.4, 0.6}},
        {"deep", {0.75, 0.25}},
        {"transforms", {0.65, 0.35}},
        {"technology", {0.7, 0.4}},
        {"data", {0.3, 0.7}},
        {"science", {0.35, 0.65}},
        {"drives", {0.4, 0.6}},
        {"innovation", {0.45, 0.55}},
        {"neural", {0.8, 0.2}},
        {"networks", {0.78, 0.22}},
        {"power", {0.6, 0.4}},
        {"ai", {0.9, 0.1}}
    };

    std::string query = "deep technology";
    auto results = vector_search(query, documents, word_embeddings);

    std::cout << "Query: " << query << "\nTop results:\n";
    for (const auto& [doc, score] : results) {
        std::cout << "Score: " << score << ", Document: " << doc << '\n';
    }

    return 0;
}

