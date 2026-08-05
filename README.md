# 🩺 Tech Challenge - Fase 1 | Pós-Graduação FIAP

Este repositório contém a solução do **Tech Challenge (Fase 1)** da Pós-Graduação em Inteligência Artificial para Devs da FIAP. O projeto consiste em um sistema de suporte ao diagnóstico médico de câncer de mama utilizando uma **abordagem multimodal** que combina análise estatística de dados tabulares e visão computacional em imagens de ultrassom.

---

## 👥 Integrantes do Grupo
* **Gustavo Luis dos Santos**

---

## 🎯 Escopo do Projeto

O sistema é dividido em dois pilares complementares de Inteligência Artificial:

1. **Modelo Tabular (Regressão Logística):** Treinado no dataset *Breast Cancer Wisconsin* para classificação binária (Maligno / Benigno). Conta com explicabilidade global e local através de **SHAP (SHapley Additive exPlanations)**. Alcançou **98,25% de acurácia** e **97,62% de recall para casos malignos** (taxa de omissão de 2,38%).
2. **Modelo de Visão Computacional (MobileNetV2):** Treinado no dataset *BUSI (Breast Ultrasound Images)* para classificação multiclasse (Benigno / Maligno / Normal). Conta com validação visual local via **Grad-CAM (Gradient-weighted Class Activation Mapping)** para destacar as regiões anatômicas relevantes na imagem. Alcançou **71,00% de acurácia**.

---

## 📂 Estrutura do Repositório

```text
├── data/
│   ├── breast_cancer_wisconsin.csv               # Dataset tabular do repositório UCI
│   └── breast_ultrasound_dataset_info.md         # Link de download e instruções do dataset BUSI
├── models/
│   ├── mobilenetv2_busi_best.keras               # Modelo de visão computacional treinado (MobileNetV2)
│   ├── modelo_breast_cancer.pkl                  # Modelo tabular treinado (Regressão Logística)
│   └── scaler.pkl                                # Escalador das variáveis tabulares (StandardScaler)
├── notebooks/
│   ├── 01_classificacao_tabular_wisconsin.ipynb  # Notebook 1: Análise Tabular & SHAP
│   └── 02_visao_computacional_cnn_busi.ipynb     # Notebook 2: Visão Computacional & Grad-CAM
├── README.md                                     # Documentação do repositório
└── requirements.txt                              # Dependências do projeto
```

## 🚀 Como Executar o Projeto no Google Colab

Os notebooks foram desenvolvidos e otimizados para execução direta no **Google Colab**.

### Opção 1: Abrir diretamente pelos links (Recomendado)

Você pode abrir e rodar os notebooks diretamente no Google Colab clicando nos botões abaixo:

* **Notebook 1 (Dados Tabulares - Wisconsin & SHAP):**  
  [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/gustavobhm/fiap-tech-challenge-fase1/blob/main/notebooks/01_classificacao_tabular_wisconsin.ipynb)

* **Notebook 2 (Visão Computacional - BUSI & Grad-CAM):**  
  *(Recomendado ativar a aceleração por GPU no menu: Editar > Configurações do notebook > Acelerador de hardware > GPU T4)*  
  [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/gustavobhm/fiap-tech-challenge-fase1/blob/main/notebooks/02_visao_computacional_cnn_busi.ipynb)

---

### Opção 2: Passo a Passo Manual no Colab

1. Acesse o [Google Colab](https://colab.research.google.com/).
2. Vá em **File > Upload Notebook** (Arquivo > Fazer upload do notebook) e envie o arquivo `.ipynb` desejado da pasta `notebooks/`.
3. Na primeira célula do notebook, as dependências necessárias serão instaladas automaticamente executando:
   ```python
   !pip install -q kagglehub grad-cam matplotlib seaborn scikit-learn tensorflow shap joblib

