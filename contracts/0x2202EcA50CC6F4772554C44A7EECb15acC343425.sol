contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
address _teamAddress;
address sub_6a6a64f7Address;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
address stor8; offset 8
address ceoAddress;
mapping of uint256 sub_8b72f2da;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of address stor13;
uint256 stor14;

function ceoAddress() {
    return ceoAddress
}

function _team() {
    return _teamAddress
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function sub_6a6a64f7(?) {
    return sub_6a6a64f7Address
}

function sub_8b72f2da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8b72f2da[address(arg1)]
}

function owner() {
    return owner
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

function sub_cee6b79d(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor14
    uint8(stor8.field_0) = 1
    stor14 = 24 * 10^6 * 24 * 3600
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

function sub_04c6c2d8(?) {
    require calldata.size - 4 >= 64
    if stor5 and stor14 > -1 / stor5:
        revert with 0, 17
    if stor5 and arg2 > -1 / stor5:
        revert with 0, 17
    if stor6 and arg1 > -1 / stor6:
        revert with 0, 17
    if stor5 * arg2 > !(stor6 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor6 > !((stor5 * arg2) + (stor6 * arg1) / arg1):
        revert with 0, 17
    if not stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1):
        revert with 0, 18
    return (stor5 * stor14 / stor6 + ((stor5 * arg2) + (stor6 * arg1) / arg1))
}

function sub_a8d13a6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(arg1)]:
        if stor4 and sub_8b72f2da[address(arg1)] > -1 / stor4:
            revert with 0, 17
        return (stor4 * sub_8b72f2da[address(arg1)])
    if block.timestamp - stor12[address(arg1)] and sub_8b72f2da[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)]))
}

function sub_857c89e4(?) {
    require calldata.size - 4 >= 32
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 0, 17
    if stor5 and stor14 > -1 / stor5:
        revert with 0, 17
    if stor6 and arg1 > -1 / stor6:
        revert with 0, 17
    if stor5 * stor14 > !(stor6 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor6 > !((stor5 * stor14) + (stor6 * arg1) / arg1):
        revert with 0, 17
    if not stor6 + ((stor5 * stor14) + (stor6 * arg1) / arg1):
        revert with 0, 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor6 * arg1) / arg1))
}

function sub_8b69bf3f(?) {
    require calldata.size - 4 >= 32
    if stor5 and stor14 > -1 / stor5:
        revert with 0, 17
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 0, 17
    if stor6 and arg1 > -1 / stor6:
        revert with 0, 17
    if stor5 * eth.balance(this.address) > !(stor6 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor6 > !((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1):
        revert with 0, 17
    if not stor6 + ((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1):
        revert with 0, 18
    return (stor5 * stor14 / stor6 + ((stor5 * eth.balance(this.address)) + (stor6 * arg1) / arg1))
}

function sub_f19ef745(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(arg1)]:
        if stor4 and sub_8b72f2da[address(arg1)] > -1 / stor4:
            revert with 0, 17
        if stor11[address(arg1)] > !(stor4 * sub_8b72f2da[address(arg1)]):
            revert with 0, 17
        return (stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)]))
    if block.timestamp - stor12[address(arg1)] and sub_8b72f2da[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 0, 17
    if stor11[address(arg1)] > !((block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)])):
        revert with 0, 17
    return (stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)]))
}

function sub_62eb3552(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor8.field_0)
    if address(arg1) != msg.sender:
        if not stor13[msg.sender]:
            if stor13[msg.sender] != msg.sender:
                stor13[msg.sender] = address(arg1)
    else:
        if not stor13[msg.sender]:
            if stor13[msg.sender] != msg.sender:
                stor13[msg.sender] = 0
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(msg.sender)]:
        if stor4 and sub_8b72f2da[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        if stor11[address(msg.sender)] > !(stor4 * sub_8b72f2da[address(msg.sender)]):
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if sub_8b72f2da[msg.sender] > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / stor4):
            revert with 0, 17
        sub_8b72f2da[msg.sender] += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / stor4
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor11[stor13[msg.sender]] > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 14):
            revert with 0, 17
        stor11[stor13[msg.sender]] += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 14
        if stor14 > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_8b72f2da[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 0, 17
        if stor11[address(msg.sender)] > !((block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if sub_8b72f2da[msg.sender] > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / stor4):
            revert with 0, 17
        sub_8b72f2da[msg.sender] += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / stor4
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor11[stor13[msg.sender]] > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 14):
            revert with 0, 17
        stor11[stor13[msg.sender]] += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 14
        if stor14 > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 5
}

function sub_c57c8151(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor12[address(arg1)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(arg1)]:
        if stor4 and sub_8b72f2da[address(arg1)] > -1 / stor4:
            revert with 0, 17
        if stor11[address(arg1)] > !(stor4 * sub_8b72f2da[address(arg1)]):
            revert with 0, 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 0, 17
        if stor5 and stor14 > -1 / stor5:
            revert with 0, 17
        if stor6 and stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)]) > -1 / stor6:
            revert with 0, 17
        if stor5 * stor14 > !((stor11[address(arg1)] * stor6) + (stor4 * sub_8b72f2da[address(arg1)] * stor6)):
            revert with 0, 17
        if not stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)]):
            revert with 0, 18
        if stor6 > !((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (stor4 * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)])):
            revert with 0, 17
        if not stor6 + ((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (stor4 * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)])):
            revert with 0, 18
        return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (stor4 * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (stor4 * sub_8b72f2da[address(arg1)])))
    if block.timestamp - stor12[address(arg1)] and sub_8b72f2da[address(arg1)] > -1 / block.timestamp - stor12[address(arg1)]:
        revert with 0, 17
    if stor11[address(arg1)] > !((block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)])):
        revert with 0, 17
    if stor5 and eth.balance(this.address) > -1 / stor5:
        revert with 0, 17
    if stor5 and stor14 > -1 / stor5:
        revert with 0, 17
    if stor6 and stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)]) > -1 / stor6:
        revert with 0, 17
    if stor5 * stor14 > !((stor11[address(arg1)] * stor6) + (block.timestamp * sub_8b72f2da[address(arg1)] * stor6) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)] * stor6)):
        revert with 0, 17
    if not stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)]):
        revert with 0, 18
    if stor6 > !((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (block.timestamp * sub_8b72f2da[address(arg1)] * stor6) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)])):
        revert with 0, 17
    if not stor6 + ((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (block.timestamp * sub_8b72f2da[address(arg1)] * stor6) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)])):
        revert with 0, 18
    return (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(arg1)] * stor6) + (block.timestamp * sub_8b72f2da[address(arg1)] * stor6) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)] * stor6) / stor11[address(arg1)] + (block.timestamp * sub_8b72f2da[address(arg1)]) - (stor12[address(arg1)] * sub_8b72f2da[address(arg1)])))
}

function sub_f1784110(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor8.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor5 and stor14 > -1 / stor5:
        revert with 0, 17
    if stor5 and eth.balance(this.address) - msg.value > -1 / stor5:
        revert with 0, 17
    if stor6 and msg.value > -1 / stor6:
        revert with 0, 17
    if (eth.balance(this.address) * stor5) - (msg.value * stor5) > !(stor6 * msg.value):
        revert with 0, 17
    if not msg.value:
        revert with 0, 18
    if stor6 > !((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 0, 17
    if not stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 0, 18
    if stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) and stor7 > -1 / stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value):
        revert with 0, 17
    if stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) < stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100:
        revert with 0, 17
    if msg.value and stor7 > -1 / msg.value:
        revert with 0, 17
    call address(stor8.field_8) with:
       value msg.value * stor7 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor11[msg.sender] > !((stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100)):
        revert with 0, 17
    stor11[msg.sender] = stor11[msg.sender] + (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value)) - (stor5 * stor14 / stor6 + ((eth.balance(this.address) * stor5) - (msg.value * stor5) + (stor6 * msg.value) / msg.value) * stor7 / 100)
    require uint8(stor8.field_0)
    if address(arg1) != msg.sender:
        if not stor13[msg.sender]:
            if stor13[msg.sender] != msg.sender:
                stor13[msg.sender] = address(arg1)
    else:
        if not stor13[msg.sender]:
            if stor13[msg.sender] != msg.sender:
                stor13[msg.sender] = 0
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(msg.sender)]:
        if stor4 and sub_8b72f2da[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        if stor11[address(msg.sender)] > !(stor4 * sub_8b72f2da[address(msg.sender)]):
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if sub_8b72f2da[msg.sender] > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / stor4):
            revert with 0, 17
        sub_8b72f2da[msg.sender] += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / stor4
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor11[stor13[msg.sender]] > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 14):
            revert with 0, 17
        stor11[stor13[msg.sender]] += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 14
        if stor14 > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_8b72f2da[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 0, 17
        if stor11[address(msg.sender)] > !((block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if sub_8b72f2da[msg.sender] > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / stor4):
            revert with 0, 17
        sub_8b72f2da[msg.sender] += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / stor4
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor11[stor13[msg.sender]] > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 14):
            revert with 0, 17
        stor11[stor13[msg.sender]] += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 14
        if stor14 > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) / 5
}

function sub_5ce8193f(?) {
    require uint8(stor8.field_0)
    if block.timestamp < stor12[address(msg.sender)]:
        revert with 0, 17
    if stor4 < block.timestamp - stor12[address(msg.sender)]:
        if stor4 and sub_8b72f2da[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        if stor11[address(msg.sender)] > !(stor4 * sub_8b72f2da[address(msg.sender)]):
            revert with 0, 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 0, 17
        if stor5 and stor14 > -1 / stor5:
            revert with 0, 17
        if stor6 and stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]) > -1 / stor6:
            revert with 0, 17
        if stor5 * stor14 > !((stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6)):
            revert with 0, 17
        if not stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]):
            revert with 0, 18
        if stor6 > !((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        if not stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])) and stor7 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor14 > !(stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        stor14 = stor14 + stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])
        call address(stor8.field_8) with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == ceoAddress:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])) * stor7 / 100:
                revert with 0, 17
            call msg.sender with:
               value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (stor4 * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (stor4 * sub_8b72f2da[address(msg.sender)])) * stor7 / 100) wei
                 gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor12[address(msg.sender)] and sub_8b72f2da[address(msg.sender)] > -1 / block.timestamp - stor12[address(msg.sender)]:
            revert with 0, 17
        if stor11[address(msg.sender)] > !((block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        if stor5 and eth.balance(this.address) > -1 / stor5:
            revert with 0, 17
        if stor5 and stor14 > -1 / stor5:
            revert with 0, 17
        if stor6 and stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]) > -1 / stor6:
            revert with 0, 17
        if stor5 * stor14 > !((stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6)):
            revert with 0, 17
        if not stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]):
            revert with 0, 18
        if stor6 > !((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        if not stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 18
        if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])) and stor7 > -1 / stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        stor11[msg.sender] = 0
        stor12[msg.sender] = block.timestamp
        if stor14 > !(stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])):
            revert with 0, 17
        stor14 = stor14 + stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])
        call address(stor8.field_8) with:
           value stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == ceoAddress:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            if stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])) < stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])) * stor7 / 100:
                revert with 0, 17
            call msg.sender with:
               value (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)]))) - (stor5 * eth.balance(this.address) / stor6 + ((stor5 * stor14) + (stor11[address(msg.sender)] * stor6) + (block.timestamp * sub_8b72f2da[address(msg.sender)] * stor6) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)] * stor6) / stor11[address(msg.sender)] + (block.timestamp * sub_8b72f2da[address(msg.sender)]) - (stor12[address(msg.sender)] * sub_8b72f2da[address(msg.sender)])) * stor7 / 100) wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
