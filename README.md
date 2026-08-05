# 🩺 Tech Challenge - Fase 1 | Pós-Graduação FIAP

Este repositório contém a solução do **Tech Challenge (Fase 1)** da Pós-Graduação em Inteligência Artificial para Devs da FIAP. O projeto consiste em um sistema de suporte ao diagnóstico médico de câncer de mama utilizando uma **abordagem multimodal** que combina análise estatística de dados tabulares e visão computacional em imagens de ultrassom.

---

## 👥 Integrantes do Grupo

* **Gustavo Luis dos Santos**

---

## 🎥 Vídeo de Demonstração do Projeto

Acesse a apresentação completa da solução, cobrindo a arquitetura, código dos notebooks e análise de explicabilidade (SHAP e Grad-CAM):

👉 **[Assistir ao Vídeo no YouTube](COLOQUE_SEU_LINK_AQUI)**

---

## 🎯 Escopo do Projeto

O sistema é dividido em dois pilares complementares de Inteligência Artificial:

1. **Modelo Tabular (Regressão Logística):** Treinado no dataset *Breast Cancer Wisconsin* para classificação binária (Maligno / Benigno). Conta com explicabilidade global e local através de **SHAP (SHapley Additive exPlanations)**.
2. **Modelo de Visão Computacional (MobileNetV2):** Treinado no dataset *BUSI (Breast Ultrasound Images)* para classificação multiclasse (Benigno / Maligno / Normal). Conta com validação visual local via **Grad-CAM (Gradient-weighted Class Activation Mapping)** para destacar as regiões anatômicas relevantes na imagem.

---

## 📊 Métricas e Resultados

### 1. Classificação Tabular (Breast Cancer Wisconsin)
* **Modelo:** Regressão Logística + StandardScaler
* **Acurácia:** 98,25%
* **Recall (Casos Malignos):** 97,62% *(Taxa de omissão de apenas 2,38%)*
* **Explicabilidade:** Análise global e local via **SHAP**.

### 2. Visão Computacional (Breast Ultrasound Images - BUSI)
* **Modelo:** Transfer Learning com MobileNetV2
* **Acurácia:** 71,00% (Classificação Multiclasse: Benigno / Maligno / Normal)
* **Explicabilidade:** Mapas de ativação visual via **Grad-CAM**.

---

## 📁 Datasets Utilizados

* **Dados Tabulares:** [Breast Cancer Wisconsin (Diagnostic)](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)) - UCI Machine Learning Repository.
* **Imagens de Ultrassom:** [Dataset of Breast Ultrasound Images (BUSI)](https://www.kaggle.com/datasets/aryashah2k/breast-ultrasound-images-dataset) - Kaggle.

---

## 📂 Estrutura do Repositório

```text
├── data/
│   ├── breast_cancer_wisconsin.csv       # Dataset tabular do repositório UCI
│   └── breast_ultrasound_dataset_info.md  # Link de download e instruções do dataset BUSI
├── models/
│   ├── mobilenetv2_busi_best.keras       # Modelo de visão computacional treinado (MobileNetV2)
│   ├── modelo_breast_cancer.pkl          # Modelo tabular treinado (Regressão Logística)
│   └── scaler.pkl                        # Escalador das variáveis tabulares (StandardScaler)
├── notebooks/
│   ├── 01_classificacao_tabular_wisconsin.ipynb # Notebook 1: Análise Tabular & SHAP
│   └── 02_visao_computacional_cnn_busi.ipynb    # Notebook 2: Visão Computacional & Grad-CAM
├── README.md                             # Documentação do repositório
└── requirements.txt                      # Dependências do projeto
```

<h2>🚀 Como Executar o Projeto no Google Colab</h2>

<p>Os notebooks foram desenvolvidos e otimizados para execução direta no <strong>Google Colab</strong>.</p>

<h3>Opção 1: Abrir diretamente pelos links (Recomendado)</h3>

<p>Você pode abrir e rodar os notebooks diretamente no Google Colab clicando nos botões abaixo:</p>

<ul>
  <li>
    <strong>Notebook 1 (Dados Tabulares - Wisconsin & SHAP):</strong><br>
    <a href="https://colab.research.google.com/"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a>
  </li>
  <br>
  <li>
    <strong>Notebook 2 (Visão Computacional - BUSI & Grad-CAM):</strong><br>
    <em>(Recomendado ativar a aceleração por GPU no menu: Ambiente de execução &gt; Alterar o tipo de ambiente de execução &gt; GPU T4)</em><br>
    <a href="https://colab.research.google.com/"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a>
  </li>
</ul>

<hr>

<h3>Opção 2: Passo a Passo Manual no Colab</h3>

<ol>
  <li>Acesse o <a href="https://colab.research.google.com/">Google Colab</a>.</li>
  <li>Vá em <strong>File &gt; Upload Notebook</strong> (Arquivo &gt; Fazer upload do notebook) e envie o arquivo <code>.ipynb</code> desejado da pasta <code>notebooks/</code>.</li>
  <li>Para o <strong>Notebook 2 (Visão Computacional)</strong>, certifique-se de ativar a GPU gratuita do Colab indo no menu superior em: <code>Ambiente de execução &gt; Alterar o tipo de ambiente de execução &gt; GPU T4</code>.</li>
  <li>Na primeira célula do notebook, as dependências necessárias serão instaladas automaticamente executando:</li>
</ol>

<pre><code>!pip install -q kagglehub grad-cam matplotlib seaborn scikit-learn tensorflow shap joblib</code></pre>
