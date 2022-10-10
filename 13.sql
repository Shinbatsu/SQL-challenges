SELECT avg(speed) FROM PC JOIN (SELECT maker,model from product where type='PC' and maker='A') t ON t.model=PC.model
