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
    require balanceOfUser[address(msg.sender)] <= ext_call.return_data[0]
    require balanceOfUser[address(msg.sender)] > 0
    require ext_code.size(0xa0ebcb85157f59684cf243dc8057184f2bba5b9b)
    call 0xa0ebcb85157f59684cf243dc8057184f2bba5b9b.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, balanceOfUser[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOfUser[address(msg.sender)] = 0
}

function sub_9ca0e649(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require msg.sender == address(stor1.field_8)
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if balanceOfUser[mem[(32 * idx) + 140 len 20]] > -cd[36] - 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOfUser[mem[(32 * idx) + 140 len 20]] += cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
