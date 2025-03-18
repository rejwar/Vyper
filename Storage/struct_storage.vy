# Storing complex data in a struct
struct Person:
    name: String[32]
    age: uint256

persons: public(HashMap[address, Person])

@external
def set_person(name: String[32], age: uint256):
    self.persons[msg.sender] = Person({name: name, age: age})

@view
@external
def get_person(addr: address) -> (String[32], uint256):
    person: Person = self.persons[addr]
    return person.name, person.age
