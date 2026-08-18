<h1>🩺 Tech Challenge - Fase 1 | Pós-Graduação FIAP</h1>

<p>Este repositório contém a solução integrada do <strong>Tech Challenge (Fase 1)</strong> da Pós-Graduação em Inteligência Artificial para Devs da FIAP. O projeto consiste em um sistema de suporte ao diagnóstico médico de câncer de mama utilizando uma <strong>abordagem multimodal</strong>, combinando análise estatística/preditiva de dados tabulares e visão computacional avançada em imagens de ultrassom.</p>

<hr>

<h2>👥 Integrantes do Grupo</h2>

<ul>
  <li><strong>Gustavo Luis dos Santos</strong></li>
</ul>

<hr>

<h2>🎥 Vídeo de Demonstração do Projeto</h2>

<p>Acesse a apresentação completa da solução, cobrindo a arquitetura, execução dos notebooks, infraestrutura MLOps/Docker e análises de explicabilidade (SHAP e Grad-CAM):</p>

<ul>
  <li>🎬 <strong><a href="COLOQUE_SEU_LINK_DO_YOUTUBE_AQUI" target="_blank">Assistir ao Vídeo de Demonstração no YouTube</a></strong></li>
</ul>

<hr>

<h2>🎯 Escopo do Projeto</h2>

<p>O sistema foi desenvolvido de forma modular, composto por uma solução base obrigatória e aprimoramentos complementares para maximizar o desempenho e a aplicabilidade clínica:</p>

<h3>📍 Módulo Principal (Obrigatório): Classificação Tabular &amp; Explicabilidade</h3>
<ul>
  <li><strong>Modelo Tabular (Regressão Logística):</strong> Treinado no dataset <em>Breast Cancer Wisconsin</em> para classificação binária (Maligno / Benigno). Conta com pré-processamento via <code>StandardScaler</code> e explicabilidade global e local através de <strong>SHAP (SHapley Additive exPlanations)</strong>.</li>
</ul>

<h3>📍 Módulo Complementar (EXTRA): Visão Computacional &amp; MLOps</h3>
<ul>
  <li><strong>Modelo de Visão Computacional (MobileNetV2):</strong> Treinado no dataset <em>BUSI (Breast Ultrasound Images)</em> para classificação multiclasse (Benigno / Maligno / Normal) utilizando Transfer Learning e validação visual local via <strong>Grad-CAM (Gradient-weighted Class Activation Mapping)</strong>.</li>
  <li><strong>Conteinerização &amp; MLOps:</strong> Suporte a execução em ambientes isolados via <strong>Dockerfile</strong> e pacotes de dependências versionados em <code>requirements.txt</code>.</li>
</ul>

<hr>

<h2>📊 Métricas e Resultados dos Modelos</h2>

<h3>1. Classificação Tabular (Breast Cancer Wisconsin - Módulo Principal)</h3>
<table>
  <thead>
    <tr>
      <th>Métrica</th>
      <th>Resultado (Regressão Logística Otimizada)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Algoritmo</strong></td>
      <td>Regressão Logística + StandardScaler</td>
    </tr>
    <tr>
      <td><strong>Acurácia</strong></td>
      <td>98,25%</td>
    </tr>
    <tr>
      <td><strong>Recall (Maligno)</strong></td>
      <td>97,62% <em>(Taxa de omissão de apenas 2,38%)</em></td>
    </tr>
    <tr>
      <td><strong>Explicabilidade</strong></td>
      <td>SHAP (Análise de impacto e relevância das variáveis)</td>
    </tr>
  </tbody>
</table>

<h3>2. Visão Computacional (Breast Ultrasound Images - BUSI - Módulo Complementar/EXTRA)</h3>
<table>
  <thead>
    <tr>
      <th>Métrica</th>
      <th>Resultado (MobileNetV2 Refinado)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Abordagem</strong></td>
      <td>Transfer Learning (MobileNetV2) + Dropout(0.5)</td>
    </tr>
    <tr>
      <td><strong>Classes</strong></td>
      <td>Benigno / Maligno / Normal</td>
    </tr>
    <tr>
      <td><strong>Acurácia</strong></td>
      <td>~70,00%</td>
    </tr>
    <tr>
      <td><strong>Explicabilidade</strong></td>
      <td>Mapas de Ativação Térmicos por Grad-CAM (3 colunas)</td>
    </tr>
  </tbody>
</table>

<hr>

<h2>📁 Datasets Utilizados</h2>

<ul>
  <li><strong>Dados Tabulares:</strong> <a href="https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)" target="_blank">Breast Cancer Wisconsin (Diagnostic)</a> - UCI Machine Learning Repository.</li>
  <li><strong>Imagens de Ultrassom:</strong> <a href="https://www.kaggle.com/datasets/aryashah2k/breast-ultrasound-images-dataset" target="_blank">Dataset of Breast Ultrasound Images (BUSI)</a> - Kaggle.</li>
</ul>

<hr>

<h2>📂 Estrutura do Repositório</h2>

<pre><code>fiap-tech-challenge-fase1/
├── data/
│   ├── breast_cancer_wisconsin.csv         # Dataset tabular do repositório UCI
│   └── breast_ultrasound_dataset_info.md   # Instruções e origem do dataset BUSI
├── models/
│   ├── mobilenetv2_busi_best.keras         # Modelo de visão computacional treinado
│   ├── modelo_breast_cancer.pkl            # Modelo tabular treinado (Regressão Logística)
│   └── scaler_breast_cancer.pkl            # Escalador das variáveis tabulares (StandardScaler)
├── notebooks/
│   ├── 01_classificacao_tabular_wisconsin.ipynb # Notebook 1: Análise Tabular &amp; SHAP
│   └── 02_visao_computacional_cnn_busi.ipynb    # Notebook 2: Visão Computacional &amp; Grad-CAM
├── Dockerfile                              # Configuração do container para a aplicação
├── README.md                               # Documentação do repositório
└── requirements.txt                        # Dependências e bibliotecas do projeto</code></pre>

<hr>

<h2>🚀 Como Executar o Projeto</h2>

<h3>Opção 1: Execução no Google Colab (Recomendado)</h3>

<p>Você pode abrir e executar os notebooks diretamente no Google Colab:</p>

<ul>
  <li>
    <strong>Notebook 1 (Dados Tabulares - Wisconsin &amp; SHAP):</strong><br>
    <a href="https://colab.research.google.com/github/gustavobhm/fiap-tech-challenge-fase1/blob/main/notebooks/01_classificacao_tabular_wisconsin.ipynb" target="_blank">
      <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab">
    </a>
  </li>
  <br>
  <li>
    <strong>Notebook 2 (Visão Computacional - BUSI &amp; Grad-CAM):</strong><br>
    <em>(Recomendado ativar a aceleração por GPU no menu: Ambiente de execução &gt; Alterar o tipo de ambiente de execução &gt; GPU T4)</em><br>
    <a href="https://colab.research.google.com/github/gustavobhm/fiap-tech-challenge-fase1/blob/main/notebooks/02_visao_computacional_cnn_busi.ipynb" target="_blank">
      <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab">
    </a>
  </li>
</ul>

<h4>Instalação Manual de Dependências no Colab:</h4>
<p>Se necessário, execute a célula inicial do notebook para preparar o ambiente:</p>

<pre><code>!pip install -q kagglehub grad-cam matplotlib seaborn scikit-learn tensorflow shap joblib</code></pre>

<hr>

<h3>Opção 2: Execução Local via Docker</h3>

<p>Para construir e rodar a aplicação em um ambiente isolado conteinerizado:</p>

<ol>
  <li><strong>Construir a imagem Docker:</strong>
    <pre><code>docker build -t fiap-tech-challenge .</code></pre>
  </li>
  <li><strong>Executar o container:</strong>
    <pre><code>docker run -p 8888:8888 fiap-tech-challenge</code></pre>
  </li>
</ol>
