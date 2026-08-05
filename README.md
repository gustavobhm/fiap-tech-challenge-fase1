<h1>🩺 Tech Challenge - Fase 1 | Pós-Graduação FIAP</h1>

<p>Este repositório contém a solução do <strong>Tech Challenge (Fase 1)</strong> da Pós-Graduação em Inteligência Artificial para Devs da FIAP. O projeto consiste em um sistema de suporte ao diagnóstico médico de câncer de mama utilizando uma <strong>abordagem multimodal</strong> que combina análise estatística de dados tabulares e visão computacional em imagens de ultrassom.</p>

<hr>

<h2>👥 Integrantes do Grupo</h2>

<ul>
  <li><strong>Gustavo Luis dos Santos</strong></li>
</ul>

<hr>

<h2>🎥 Vídeo de Demonstração do Projeto</h2>

<p>Acesse a apresentação completa da solução, cobrindo a arquitetura, código dos notebooks e análise de explicabilidade (SHAP e Grad-CAM):</p>

<p>👉 <strong><a href="COLOQUE_SEU_LINK_AQUI">Assistir ao Vídeo no YouTube</a></strong></p>

<hr>

<h2>🎯 Escopo do Projeto</h2>

<p>O sistema é dividido em dois pilares complementares de Inteligência Artificial:</p>

<ol>
  <li><strong>Modelo Tabular (Regressão Logística):</strong> Treinado no dataset <em>Breast Cancer Wisconsin</em> para classificação binária (Maligno / Benigno). Conta com explicabilidade global e local através de <strong>SHAP (SHapley Additive exPlanations)</strong>.</li>
  <li><strong>Modelo de Visão Computacional (MobileNetV2):</strong> Treinado no dataset <em>BUSI (Breast Ultrasound Images)</em> para classificação multiclasse (Benigno / Maligno / Normal). Conta com validação visual local via <strong>Grad-CAM (Gradient-weighted Class Activation Mapping)</strong> para destacar as regiões anatômicas relevantes na imagem.</li>
</ol>

<hr>

<h2>📊 Métricas e Resultados</h2>

<h3>1. Classificação Tabular (Breast Cancer Wisconsin)</h3>
<ul>
  <li><strong>Modelo:</strong> Regressão Logística + StandardScaler</li>
  <li><strong>Acurácia:</strong> 98,25%</li>
  <li><strong>Recall (Casos Malignos):</strong> 97,62% <em>(Taxa de omissão de apenas 2,38%)</em></li>
  <li><strong>Explicabilidade:</strong> Análise global e local via <strong>SHAP</strong>.</li>
</ul>

<h3>2. Visão Computacional (Breast Ultrasound Images - BUSI)</h3>
<ul>
  <li><strong>Modelo:</strong> Transfer Learning com MobileNetV2</li>
  <li><strong>Acurácia:</strong> 71,00% (Classificação Multiclasse: Benigno / Maligno / Normal)</li>
  <li><strong>Explicabilidade:</strong> Mapas de ativação visual via <strong>Grad-CAM</strong>.</li>
</ul>

<hr>

<h2>📁 Datasets Utilizados</h2>

<ul>
  <li><strong>Dados Tabulares:</strong> <a href="https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)">Breast Cancer Wisconsin (Diagnostic)</a> - UCI Machine Learning Repository.</li>
  <li><strong>Imagens de Ultrassom:</strong> <a href="https://www.kaggle.com/datasets/aryashah2k/breast-ultrasound-images-dataset">Dataset of Breast Ultrasound Images (BUSI)</a> - Kaggle.</li>
</ul>

<hr>

<h2>📂 Estrutura do Repositório</h2>

<pre><code>├── data/
│   ├── breast_cancer_wisconsin.csv       # Dataset tabular do repositório UCI
│   └── breast_ultrasound_dataset_info.md  # Link de download e instruções do dataset BUSI
├── models/
│   ├── mobilenetv2_busi_best.keras       # Modelo de visão computacional treinado (MobileNetV2)
│   ├── modelo_breast_cancer.pkl          # Modelo tabular treinado (Regressão Logística)
│   └── scaler.pkl                        # Escalador das variáveis tabulares (StandardScaler)
├── notebooks/
│   ├── 01_classificacao_tabular_wisconsin.ipynb # Notebook 1: Análise Tabular &amp; SHAP
│   └── 02_visao_computacional_cnn_busi.ipynb    # Notebook 2: Visão Computacional &amp; Grad-CAM
├── README.md                             # Documentação do repositório
└── requirements.txt                      # Dependências do projeto</code></pre>

<hr>

<h2>🚀 Como Executar o Projeto no Google Colab</h2>

<p>Os notebooks foram desenvolvidos e otimizados para execução direta no <strong>Google Colab</strong>.</p>

<h3>Opção 1: Abrir diretamente pelos links (Recomendado)</h3>

<p>Você pode abrir e rodar os notebooks diretamente no Google Colab clicando nos botões abaixo:</p>

<ul>
  <li>
    <strong>Notebook 1 (Dados Tabulares - Wisconsin &amp; SHAP):</strong><br>
    <a href="https://colab.research.google.com/github/SEU_USUARIO/SEU_REPOSITORIO/blob/main/notebooks/01_classificacao_tabular_wisconsin.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a>
  </li>
  <br>
  <li>
    <strong>Notebook 2 (Visão Computacional - BUSI &amp; Grad-CAM):</strong><br>
    <em>(Recomendado ativar a aceleração por GPU no menu: Ambiente de execução &gt; Alterar o tipo de ambiente de execução &gt; GPU T4)</em><br>
    <a href="https://colab.research.google.com/github/SEU_USUARIO/SEU_REPOSITORIO/blob/main/notebooks/02_visao_computacional_cnn_busi.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a>
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
