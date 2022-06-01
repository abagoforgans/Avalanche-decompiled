contract main {




// =====================  Runtime code  =====================


const sub_7ee215fb(?) = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
address stor3;
array of struct stor4;
mapping of uint256 stor5;
mapping of uint256 sub_365fd982;

function sub_365fd982(?) {
    return sub_365fd982[address(msg.sender)]
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Yor're not the owner!'
    require arg1
    owner = arg1
}

function sub_67b65c8c(?) payable {
    if sub_365fd982[address(msg.sender)] <= 0:
        revert with 0, 'You are not even donator!'
    sub_365fd982[address(msg.sender)] = 0
    if stor5[address(msg.sender)] >= stor4.length:
        revert with 'NH{q', 50
    stor4[stor5[address(msg.sender)]].field_0 = 0
}

function sub_5608a4e5(?) payable {
    if owner != msg.sender:
        revert with 0, 'Yor're not the owner!'
    if not stor3:
        revert with 0, 'Set recipient!'
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Yor're not the owner!'
    if block.timestamp <= stor1:
        revert with 0, 'It's been less than an hour!'
    if block.timestamp > -3601:
        revert with 'NH{q', 17
    stor1 = block.timestamp + 3600
    stor3 = arg1
}

function Donate() payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the donation must be greater than 0!'
    stor4.length++
    stor4[stor4.length].field_0 = msg.sender
    stor5[address(msg.sender)] = stor2
    sub_365fd982[address(msg.sender)] = msg.value
    if stor2 == -1:
        revert with 'NH{q', 17
    stor2++
}

function sub_85aae382(?) {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}



}
