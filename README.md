<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>README - Tech Challenge Fase 1</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            line-height: 1.6;
            color: #24292e;
            max-width: 880px;
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
        }
        h1 {
            color: #1a365d;
            border-bottom: 2px solid #2b6cb0;
            padding-bottom: 8px;
        }
        h2 {
            color: #2b6cb0;
            border-bottom: 1px solid #e2e8f0;
            padding-bottom: 6px;
            margin-top: 30px;
        }
        h3 {
            color: #2d3748;
        }
        code {
            background-color: #f7fafc;
            border: 1px solid #e2e8f0;
            border-radius: 4px;
            padding: 2px 6px;
            font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, Courier, monospace;
            font-size: 0.9em;
            color: #c53030;
        }
        pre {
            background-color: #f7fafc;
            border: 1px solid #e2e8f0;
            border-radius: 6px;
            padding: 16px;
            overflow-x: auto;
        }
        pre code {
            background-color: transparent;
            border: none;
            padding: 0;
            color: #2d3748;
        }
        ul, ol {
            padding-left: 20px;
        }
        li {
            margin-bottom: 6px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #cbd5e0;
            padding: 10px 12px;
            text-align: left;
        }
        th {
            background-color: #2b6cb0;
            color: #ffffff;
        }
        tr:nth-child(even) {
            background-color: #f7fafc;
        }
        .callout {
            background-color: #ebf8ff;
            border-left: 4px solid #3182ce;
            padding: 12px 16px;
            margin: 16px 0;
            border-radius: 0 4px 4px 0;
        }
        a {
            color: #2b6cb0;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>Tech Challenge Fase 1 — Diagnosis ML &amp; Vision</h1>
    <p><strong>FIAP — Pós-Tech em Machine Learning Engineering</strong></p>

    <div class="callout">
        <strong>📌 Visão Geral do Projeto:</strong><br>
        Esta solução integra dois pilares fundamentais de Inteligência Artificial aplicada ao diagnóstico de câncer de mama:
        <ul>
            <li><strong>Modelagem Tabular:</strong> Classificação preditiva de tumores clínicos com base no banco de dados <em>Wisconsin Breast Cancer</em>.</li>
            <li><strong>Visão Computacional &amp; Deep Learning:</strong> Diagnóstico automatizado e explicabilidade visual via exames de ecografia e ultrassom (Dataset <em>BUSI</em>).</li>
        </ul>
    </div>

    <h2>📁 Estrutura do Repositório</h2>
    <pre><code>Tech_Challenge_V4/
├── data/                   # Datasets utilizados no projeto (Tabular e Imagens)
├── models/                 # Artefatos treinados e salvos
│   ├── modelo_breast_cancer.pkl    # Modelo Tabular de Classificação
│   ├── scaler_breast_cancer.pkl    # Padronizador de Atributos Tabulares
│   └── mobilenetv2_busi_best.keras # Rede Neural Convolucional (CNN)
├── notebooks/              # Pipelines de Análise e Treinamento
│   ├── 01_modelo_tabular_wisconsin.ipynb
│   └── 02_visao_computacional_cnn_busi_v9.ipynb
├── reports/                # Relatórios Técnicos Gerados em PDF via ReportLab
├── Dockerfile              # Receita de conteinerização do projeto
├── requirements.txt        # Dependências do ambiente Python
└── README.md               # Documentação técnica oficial</code></pre>

    <h2>🧠 Arquiteturas e Modelos</h2>
    
    <h3>1. Modelo Tabular (Wisconsin Breast Cancer)</h3>
    <ul>
        <li><strong>Objetivo:</strong> Identificação precoce de malignidade em massas mamárias a partir de características morfológicas das células.</li>
        <li><strong>Pré-processamento:</strong> Remoção de outliers, normalização de atributos via <code>StandardScaler</code> e balanceamento estratégico.</li>
        <li><strong>Artefatos:</strong> Exportados em formato pickle (<code>.pkl</code>) para inferência em produção.</li>
    </ul>

    <h3>2. Visão Computacional (BUSI Dataset)</h3>
    <ul>
        <li><strong>Objetivo:</strong> Classificação de ultrassografias mamárias nas categorias <code>benign</code>, <code>malignant</code> e <code>normal</code>.</li>
        <li><strong>Arquitetura:</strong> <em>Transfer Learning</em> utilizando a base <strong>MobileNetV2</strong> pré-treinada no ImageNet, acoplada a uma cabeça customizada com <code>GlobalAveragePooling2D</code> e regularização por <code>Dropout(0.5)</code>.</li>
        <li><strong>Data Augmentation:</strong> Rotações, translações espaciais e espelhamentos para mitigação de <em>overfitting</em>.</li>
        <li><strong>Explicabilidade (Grad-CAM):</strong> Mapeamento térmico de ativação para auditoria visual da decisão médica do modelo.</li>
        <li><strong>Artefato:</strong> Modelo exportado no formato nativo Keras (<code>.keras</code>).</li>
    </ul>

    <h2>📊 Métricas de Desempenho (Visão Computacional)</h2>
    <table>
        <thead>
            <tr>
                <th>Diagnóstico / Classe</th>
                <th>Precision</th>
                <th>Recall (Sensibilidade)</th>
                <th>F1-Score</th>
                <th>Amostras (Support)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>benign</strong></td>
                <td>0.83</td>
                <td>0.75</td>
                <td>0.79</td>
                <td>87</td>
            </tr>
            <tr>
                <td><strong>malignant</strong></td>
                <td>0.69</td>
                <td>0.74</td>
                <td>0.71</td>
                <td>42</td>
            </tr>
            <tr>
                <td><strong>normal</strong></td>
                <td>0.70</td>
                <td>0.85</td>
                <td>0.77</td>
                <td>27</td>
            </tr>
            <tr>
                <td><strong>Accuracy Geral</strong></td>
                <td colspan="2">—</td>
                <td><strong>0.76</strong></td>
                <td><strong>156</strong></td>
            </tr>
        </tbody>
    </table>

    <h2>🚀 Como Executar o Projeto</h2>

    <h3>Execução Local</h3>
    <p>1. Clone o repositório e acesse a pasta do projeto:</p>
    <pre><code>git clone https://github.com/gustavobhm/fiap-tech-challenge-fase1.git
cd Tech_Challenge_V4</code></pre>

    <p>2. Crie e ative um ambiente virtual (opcional, mas recomendado):</p>
    <pre><code>python -m venv venv
source venv/bin/activate  # No Windows: venv\Scripts\activate</code></pre>

    <p>3. Instale as dependências requisitadas:</p>
    <pre><code>pip install -r requirements.txt</code></pre>

    <p>4. Execute a aplicação do dashboard/inferência:</p>
    <pre><code>streamlit run app.py</code></pre>

    <h3>Execução via Docker</h3>
    <p>1. Construa a imagem Docker:</p>
    <pre><code>docker build -t tech-challenge-v4 .</code></pre>

    <p>2. Inicie o contêiner:</p>
    <pre><code>docker run -p 8501:8501 tech-challenge-v4</code></pre>
    <p>Acesse a interface no seu navegador através do endereço: <code>http://localhost:8501</code></p>

    <h2>🔗 Links Úteis e Recursos</h2>
    <ul>
        <li><strong>Repositório GitHub:</strong> <a href="https://github.com/gustavobhm/fiap-tech-challenge-fase1" target="_blank">https://github.com/gustavobhm/fiap-tech-challenge-fase1</a></li>
        <li><strong>Vídeo de Demonstração:</strong> <a href="#" target="_blank">Link do Vídeo no YouTube</a></li>
    </ul>

</body>
</html>