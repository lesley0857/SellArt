#!/bin/sh
# until cd /app/
# do
#     echo "Waiting for server volume..."
# done

# run a worker 
celery --app=eshopperproject worker --pool=solo -l INFO
celery -A eshopperproject beat -l INFO