#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include "vector_search.h"

int main() {

    std::vector<std::string> documents;
    std::ifstream file("../documents.txt");
    if (!file) {
        std::cerr << "Error opening documents.txt\n";
        return 1;
    }

    std::string line;
    while (std::getline(file, line)) {
        if (!line.empty()) {
            documents.push_back(line);
        }
    }
    file.close();

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

