## Ojects

Object oriented design is a way to think about programming, and how to achitect a program.

#### Rental App
Imagine you are a landlord. You want a program to manage your rentals.
What is the program suppose to do? What are my requirements?
- Track rentals
- History of tenants. Who lived in certain apartment?
- Track availability of apartments.
- Rental description (price, sq ft, etc.)
- Track info of renters (name, phone, email, credit info, payment)
- Track maintenance/repairs for apartment, and requests for repairs.
- Relate renters to specific apartments (assign tenant to apartment)
- Lease duration.
- Payments/Financials

**What is the scope of our app? Most important things for version 1.0**
- List apartments
- Apartment Description
- Availability
- Assignments
- Renter Info

#### Classes

Tenant:
- name
- email
- phone

Unit: 
- number
- sq_ft
- number_of_bedrooms
- number_of_bathrooms
- rent
- lease_terms
- available? (This is a method not a prefix state)

Building:
- address
- number_of_units

**What are the relationships for our models?**

Relationship types:
- has_many
- has_one
- belongs_to
- has_many_through

Our Relationships:
- a building has_many units
- a unit belongs_to a building
- a unit has_one tenant
- a tenant belongs to a unit
- a building has_many tenants through units (not a direct relationship)

**What abilities should building have?**
- List all the units
- List available units (on date x?)
- Contact list of all tenants
- Make announcements?

**What abilities should unit have?**

**What abilities should tenant have?**
