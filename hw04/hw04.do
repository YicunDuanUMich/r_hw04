 import sas using "L:\umich\stat506\r_hw04\data\sub_shed.sas7bdat", clear
 
 display _N
 display `r(k)'
 
 replace finance = finance >= 3
 
 svyset case_id [pw=weight_pop]
 svy: logit finance c.natural_disaster c.rate_economic_cond i.own_or_rent i.edu i.race
 
 export delimited using "L:\umich\stat506\r_hw04\data\stata_output.csv", replace