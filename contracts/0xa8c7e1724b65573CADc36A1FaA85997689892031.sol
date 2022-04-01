contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOfUser;
uint8 stor1;
address stor1;
address stor1; offset 8

function balanceOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfUser[address(arg1)]
}

function _fallback() payable {
    revert
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOfUser[address(arg1)] <= 0:
        return 0
    return 1
}

function enable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor1.field_8)
    uint8(stor1.field_0) = uint8(arg1)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor1.field_8)
    require ext_code.size(0xa0ebcb85157f59684cf243dc8057184f2bba5b9b)
    staticcall 0xa0ebcb85157f59684cf243dc8057184f2bba5b9b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(0xa0ebcb85157f59684cf243dc8057184f2bba5b9b)
    call 0xa0ebcb85157f59684cf243dc8057184f2bba5b9b.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor1.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim() payable {
    require bool(uint8(stor1.field_0)) == 1
    require ext_code.size(0xa0ebcb85157f59684cf243dc8057184f2bba5b9b)
    staticcall 0xa0ebcb85157f59684cf243dc8057184f2bba5b9b.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 10047 * 10^18 <= ext_call.return_data[0]
    require 10047 * 10^18 == balanceOfUser[address(msg.sender)]
    require ext_code.size(0xa0ebcb85157f59684cf243dc8057184f2bba5b9b)
    call 0xa0ebcb85157f59684cf243dc8057184f2bba5b9b.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, 10047 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOfUser[address(msg.sender)] = 0
}



}
