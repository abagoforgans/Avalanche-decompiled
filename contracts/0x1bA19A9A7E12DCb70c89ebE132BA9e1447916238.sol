contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
address _devAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
address stor8; offset 8
address stor9;
address stor10;
mapping of uint256 sub_4b634b06;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of address stor14;
uint256 stor15;

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function owner() {
    return owner
}

function _dev() {
    return _devAddress
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
    require not stor15
    uint8(stor8.field_0) = 1
    stor15 = 30 * 10^6 * 24 * 3600
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

function sub_ad1f2015(?) {
    require calldata.size - 4 >= 64
    if stor4 and stor15 > -1 / stor4:
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
    return (stor4 * stor15 / stor5 + ((stor4 * arg2) + (stor5 * arg1) / arg1))
}

function sub_583dfb52(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor13[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        return (stor3 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor13[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor13[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_a13ab0e7(?) {
    require calldata.size - 4 >= 32
    if stor4 and eth.balance(this.address) > -1 / stor4:
        revert with 0, 17
    if stor4 and stor15 > -1 / stor4:
        revert with 0, 17
    if stor5 and arg1 > -1 / stor5:
        revert with 0, 17
    if stor4 * stor15 > !(stor5 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor5 > !((stor4 * stor15) + (stor5 * arg1) / arg1):
        revert with 0, 17
    if not stor5 + ((stor4 * stor15) + (stor5 * arg1) / arg1):
        revert with 0, 18
    return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor5 * arg1) / arg1))
}

function sub_a7cda944(?) {
    require calldata.size - 4 >= 32
    if stor4 and stor15 > -1 / stor4:
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
    return (stor4 * stor15 / stor5 + ((stor4 * eth.balance(this.address)) + (stor5 * arg1) / arg1))
}

function sub_6e4d9ec1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor13[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        if stor12[address(arg1)] > !(stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        return (stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor13[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor13[address(arg1)]:
        revert with 0, 17
    if stor12[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    return (stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_7b5edc8d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor8.field_0)
    if address(arg1) != msg.sender:
        if not stor14[msg.sender]:
            if stor14[msg.sender] != msg.sender:
                stor14[msg.sender] = address(arg1)
    else:
        if not stor14[msg.sender]:
            if stor14[msg.sender] != msg.sender:
                stor14[msg.sender] = 0
    if block.timestamp < stor13[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor12[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor12[stor14[msg.sender]] > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor12[stor14[msg.sender]] += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if stor15 > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor15 += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor13[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor13[address(msg.sender)]:
            revert with 0, 17
        if stor12[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor12[stor14[msg.sender]] > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor12[stor14[msg.sender]] += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor15 > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor15 += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_b52b498b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor13[address(arg1)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(arg1)]:
        if stor3 and sub_4b634b06[address(arg1)] > -1 / stor3:
            revert with 0, 17
        if stor12[address(arg1)] > !(stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and stor15 > -1 / stor4:
            revert with 0, 17
        if stor5 and stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * stor15 > !((stor12[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5)):
            revert with 0, 17
        if not stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)]):
            revert with 0, 18
        if stor5 > !((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])):
            revert with 0, 17
        if not stor5 + ((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])):
            revert with 0, 18
        return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (stor3 * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (stor3 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor13[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor13[address(arg1)]:
        revert with 0, 17
    if stor12[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if stor4 and eth.balance(this.address) > -1 / stor4:
        revert with 0, 17
    if stor4 and stor15 > -1 / stor4:
        revert with 0, 17
    if stor5 and stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor5:
        revert with 0, 17
    if stor4 * stor15 > !((stor12[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)] * stor5)):
        revert with 0, 17
    if not stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 0, 18
    if stor5 > !((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if not stor5 + ((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 18
    return (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(arg1)] * stor5) + (block.timestamp * sub_4b634b06[address(arg1)] * stor5) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)] * stor5) / stor12[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor13[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function sub_3805100d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor8.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor4 and stor15 > -1 / stor4:
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
    if stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) and stor6 > -1 / stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value):
        revert with 0, 17
    if stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) < stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100:
        revert with 0, 17
    if (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) and stor7 > -1 / (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100):
        revert with 0, 17
    if (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) < (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100:
        revert with 0, 17
    if (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) and stor6 > -1 / (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100):
        revert with 0, 17
    if (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) < (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor6) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor6) / 100:
        revert with 0, 17
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor7 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    call address(stor8.field_8) with:
       value msg.value * stor6 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor9 with:
       value msg.value * stor7 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor10 with:
       value msg.value * stor6 / 100 wei
         gas 2300 * is_zero(value) wei
    if stor12[msg.sender] > !((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor6) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor6) / 100)):
        revert with 0, 17
    stor12[msg.sender] = stor12[msg.sender] + (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value)) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor6) - ((stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor7) - (stor4 * stor15 / stor5 + ((eth.balance(this.address) * stor4) - (msg.value * stor4) + (stor5 * msg.value) / msg.value) * stor6 / 100 * stor7) / 100 * stor6) / 100)
    require uint8(stor8.field_0)
    if address(arg1) != msg.sender:
        if not stor14[msg.sender]:
            if stor14[msg.sender] != msg.sender:
                stor14[msg.sender] = address(arg1)
    else:
        if not stor14[msg.sender]:
            if stor14[msg.sender] != msg.sender:
                stor14[msg.sender] = 0
    if block.timestamp < stor13[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor12[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / stor3
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor12[stor14[msg.sender]] > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor12[stor14[msg.sender]] += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 8
        if stor15 > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor15 += stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor13[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor13[address(msg.sender)]:
            revert with 0, 17
        if stor12[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor3
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor12[stor14[msg.sender]] > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8):
            revert with 0, 17
        stor12[stor14[msg.sender]] += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 8
        if stor15 > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor15 += stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_087440c5(?) {
    require uint8(stor8.field_0)
    if block.timestamp < stor13[address(msg.sender)]:
        revert with 0, 17
    if stor3 < block.timestamp - stor13[address(msg.sender)]:
        if stor3 and sub_4b634b06[address(msg.sender)] > -1 / stor3:
            revert with 0, 17
        if stor12[address(msg.sender)] > !(stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and stor15 > -1 / stor4:
            revert with 0, 17
        if stor5 and stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * stor15 > !((stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5)):
            revert with 0, 17
        if not stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor5 > !((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor15 > !(stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor15 = stor15 + stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])
        call address(stor8.field_8) with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor10 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) < stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)]))) - (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (stor3 * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (stor3 * sub_4b634b06[address(msg.sender)])) * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor13[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor13[address(msg.sender)]:
            revert with 0, 17
        if stor12[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 and eth.balance(this.address) > -1 / stor4:
            revert with 0, 17
        if stor4 and stor15 > -1 / stor4:
            revert with 0, 17
        if stor5 and stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor5:
            revert with 0, 17
        if stor4 * stor15 > !((stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5)):
            revert with 0, 17
        if not stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor5 > !((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor7 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor6 > -1 / stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor12[msg.sender] = 0
        stor13[msg.sender] = block.timestamp
        if stor15 > !(stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor15 = stor15 + stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor8.field_8) with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor10 with:
           value stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor4 * eth.balance(this.address) / stor5 + ((stor4 * stor15) + (stor12[address(msg.sender)] * stor5) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor5) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor5) / stor12[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor13[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
