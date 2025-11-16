# Airflow

Workflow orchestration platform with PostgreSQL (LocalExecutor).

**Version**: Apache Airflow 3.1.3 (Python 3.13)

## Start

```bash
make up airflow
```

## Access

- **Web UI**: http://localhost:3010
- **Credentials**: airflow / airflow

## Setup

Login with airflow/airflow and start building workflows.

## DAG Example

Create `dags/example_dag.py`:

```python
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG('example', start_date=datetime(2024, 1, 1), schedule_interval='@daily') as dag:
    task = BashOperator(task_id='hello', bash_command='echo "Hello Airflow"')
```

Copy to container:
```bash
docker cp example_dag.py airflow-webserver:/opt/airflow/dags/
```
