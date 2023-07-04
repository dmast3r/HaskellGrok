-- convert the below function to point free style
fn x = ceiling (negate (tan (cos (max 50 x))))

-- remove the last parameter, replace all the () with dots
fn = ceiling . negate . tan . cos . max 50