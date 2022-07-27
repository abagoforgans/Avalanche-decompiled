contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
address sub_6a6a64f7Address;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 8
address stor10;
address stor11;
mapping of uint256 sub_4b634b06;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of address referrers;
mapping of uint256 referralsCount;
uint256 sub_d57b83cd;

function referrers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[arg1]
}

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function sub_6a6a64f7(?) {
    return sub_6a6a64f7Address
}

function referralsCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referralsCount[arg1]
}

function owner() {
    return owner
}

function sub_d57b83cd(?) {
    return sub_d57b83cd
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_908aa269(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not sub_d57b83cd
    uint8(stor9.field_0) = 1
    sub_d57b83cd = 30 * 10^6 * 24 * 3600
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6d02995d(?) {
    require calldata.size - 4 >= 64
    if stor4 and sub_d57b83cd > -1 / stor4:
        revert with 0, 17
    if stor4 and arg2 > -1 / stor4:
        revert with 0, 17
    if stor5 and arg1 > -1 / stor5:
        revert with 0, 17
    if stor4 * arg2 > !(stor5 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor5 > !((stor4 * arg2) + (stor5 * arg1) / arg1):
        revert with 0, 17
    if not stor5 + ((stor4 * arg2) + (stor5 * arg1) / arg1):
        revert with 0, 18
    return (stor4 * sub_d57b83cd / stor5 + ((stor4 * arg2) + (stor5 * arg1) / arg1))
}

function sub_d8ba7b9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor14[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        return (stor3 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor14[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor14[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_c4b0a2cb(?) {
    require calldata.size - 4 >= 32
    if stor4 and eth.balance(this.address) > -1 / stor4:
        revert with 0, 17
    if stor4 and sub_d57b83cd > -1 / stor4:
        revert with 0, 17
    if stor5 and arg1 > -1 / stor5:
        revert with 0, 17
    if stor4 * sub_d57b83cd > !(stor5 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor5 > !((stor4 * sub_d57b83cd) + (stor5 * arg1) / arg1):
        revert with 0, 17
    if not stor5 + ((stor4 * sub_d57b83cd) + (stor5 * arg1) / arg1):
        revert with 0, 18
    return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor5 * arg1) / arg1))
}

function sub_f8ad688f(?) {
    require calldata.size - 4 >= 32
    if stor4 and sub_d57b83cd > -1 / stor4:
        revert with 0, 17
    if stor4 and eth.balance(this.address) > -1 / stor4:
        revert with 0, 17
    if stor5 and arg1 > -1 / stor5:
        revert with 0, 17
    if stor4 * eth.balance(this.address) > !(stor5 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor5 > !((stor4 * eth.balance(this.address)) + (stor5 * arg1) / arg1):
        revert with 0, 17
    if not stor5 + ((stor4 * eth.balance(this.address)) + (stor5 * arg1) / arg1):
        revert with 0, 18
    return (stor4 * sub_d57b83cd / stor5 + ((stor4 * eth.balance(this.address)) + (stor5 * arg1) / arg1))
}

function sub_f89b17c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor14[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        if stor13[address(arg1)] > !(stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        return (stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor14[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor14[address(arg1)]:
        revert with 0, 17
    if stor13[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    return (stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_bf231373(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor9.field_0)
    if address(arg1) != msg.sender:
        if not referrers[msg.sender]:
            if referrers[msg.sender] != msg.sender:
                referrers[msg.sender] = address(arg1)
                if referralsCount[address(arg1)] > -2:
                    revert with 0, 17
                referralsCount[address(arg1)]++
    else:
        if not referrers[msg.sender]:
            if referrers[msg.sender] != msg.sender:
                referrers[msg.sender] = 0
                if referralsCount[0] > -2:
                    revert with 0, 17
                referralsCount[0]++
    if block.timestamp < stor14[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor13[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if stor13[stor15[msg.sender]] > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor13[stor15[msg.sender]] += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        sub_d57b83cd += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor14[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor14[address(msg.sender)]:
            revert with 0, 17
        if stor13[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if stor13[stor15[msg.sender]] > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor13[stor15[msg.sender]] += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        sub_d57b83cd += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_bea96126(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor14[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        if stor13[address(arg1)] > !(stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and sub_d57b83cd > -1 / stor4:
            revert with 0, 17
        if stor5 and stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * sub_d57b83cd > !((stor13[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5)):
            revert with 0, 17
        if not stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 18
        if stor5 > !((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])):
            revert with 0, 17
        if not stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])):
            revert with 0, 18
        return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor14[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor14[address(arg1)]:
        revert with 0, 17
    if stor13[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if stor4 and eth.balance(this.address) > -1 / stor4:
        revert with 0, 17
    if stor4 and sub_d57b83cd > -1 / stor4:
        revert with 0, 17
    if stor5 and stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor5:
        revert with 0, 17
    if stor4 * sub_d57b83cd > !((stor13[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)] * stor5)):
        revert with 0, 17
    if not stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 0, 18
    if stor5 > !((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if not stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 18
    return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor13[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor14[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function sub_bd1c3b87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor9.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor4 and sub_d57b83cd > -1 / stor4:
        revert with 0, 17
    if stor4 and eth.balance(this.address) - msg.value > -1 / stor4:
        revert with 0, 17
    if stor5 and msg.value > -1 / stor5:
        revert with 0, 17
    if (eth.balance(this.address) * stor4) - (msg.value * stor4) > !(stor5 * msg.value):
        revert with 0, 17
    if not msg.value:
        revert with 0, 18
    if stor5 > !((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value):
        revert with 0, 17
    if not stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value):
        revert with 0, 18
    if stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) and stor6 > -1 / stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value):
        revert with 0, 17
    if stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) < stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100:
        revert with 0, 17
    if (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) and stor7 > -1 / (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100):
        revert with 0, 17
    if (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) < (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100:
        revert with 0, 17
    if (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) and stor8 > -1 / (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100):
        revert with 0, 17
    if (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) < (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor8) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor8) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor8) / 100:
        revert with 0, 17
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor7 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor8 > -1 / msg.value:
        revert with 0, 17
    call address(stor9.field_8) with:
       value msg.value * stor6 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value msg.value * stor7 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor11 with:
       value msg.value * stor8 / 100 wei
         gas 2300 * is_zero(value) wei
    if stor13[msg.sender] > !((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor8) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor8) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor8) / 100)):
        revert with 0, 17
    stor13[msg.sender] = stor13[msg.sender] + (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor8) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor8) - ((stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * sub_d57b83cd / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor8) / 100)
    require uint8(stor9.field_0)
    if address(arg1) != msg.sender:
        if not referrers[msg.sender]:
            if referrers[msg.sender] != msg.sender:
                referrers[msg.sender] = address(arg1)
                if referralsCount[address(arg1)] > -2:
                    revert with 0, 17
                referralsCount[address(arg1)]++
    else:
        if not referrers[msg.sender]:
            if referrers[msg.sender] != msg.sender:
                referrers[msg.sender] = 0
                if referralsCount[0] > -2:
                    revert with 0, 17
                referralsCount[0]++
    if block.timestamp < stor14[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor13[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if stor13[stor15[msg.sender]] > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor13[stor15[msg.sender]] += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        sub_d57b83cd += stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor14[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor14[address(msg.sender)]:
            revert with 0, 17
        if stor13[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if stor13[stor15[msg.sender]] > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor13[stor15[msg.sender]] += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        sub_d57b83cd += stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_d5478855(?) {
    require uint8(stor9.field_0)
    if block.timestamp < stor14[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor14[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor13[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and sub_d57b83cd > -1 / stor4:
            revert with 0, 17
        if stor5 and stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * sub_d57b83cd > !((stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5)):
            revert with 0, 17
        if not stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor5 > !((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor8 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        sub_d57b83cd = sub_d57b83cd + stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])
        call address(stor9.field_8) with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor10 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor11 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) < stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]))) - (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor14[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor14[address(msg.sender)]:
            revert with 0, 17
        if stor13[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and sub_d57b83cd > -1 / stor4:
            revert with 0, 17
        if stor5 and stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * sub_d57b83cd > !((stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5)):
            revert with 0, 17
        if not stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor5 > !((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor8 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor13[msg.sender] = 0
        stor14[msg.sender] = block.timestamp
        if sub_d57b83cd > !(stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        sub_d57b83cd = sub_d57b83cd + stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor9.field_8) with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor10 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor11 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor4 * eth.balance(this.address) / stor5 + ((stor4 * sub_d57b83cd) + (stor13[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor13[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor14[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
