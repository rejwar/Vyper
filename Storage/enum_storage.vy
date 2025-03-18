# Using enums for state management
enum Status:
    Inactive
    Active
    Suspended

contract_status: public(Status)

@external
def set_status(new_status: Status):
    self.contract_status = new_status

@view
@external
def get_status() -> Status:
    return self.contract_status
