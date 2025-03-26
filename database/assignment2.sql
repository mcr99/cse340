-- step 1 add account table

INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- step 2 update  account table

UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- step 3 delete  account table

DELETE FROM account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- step 4 update inventory

UPDATE inventory
SET inv_description = REPLACE (inv_description, 'the small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- step 5  join inventory and classification

SELECT inventory.inv_make, inventory.inv_model, classification.classification_name
FROM inventory
INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

-- step 6 update inventory

UPDATE inventory 
SET inv_image = REPLACE (inv_image, '/image', '/image/vehicles/'),
inv_thumbnail = REPLACE (inv_thumbnail, '/image', '/image/vehicles/');
