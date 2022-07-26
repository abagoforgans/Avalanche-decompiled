contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address sub_62940cc4Address;
address _teamAddress;
address sub_6a6a64f7Address;
address _treasuryAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
address stor13; offset 8
address stor14;
address stor15;
address stor16;
address stor17;
mapping of uint256 sub_7b01473d;
mapping of uint256 stor19;
mapping of uint256 stor20;
mapping of address stor21;
uint256 stor22;

function _team() {
    return _teamAddress
}

function sub_62940cc4(?) {
    return sub_62940cc4Address
}

function sub_6a6a64f7(?) {
    return sub_6a6a64f7Address
}

function sub_7b01473d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b01473d[address(arg1)]
}

function owner() {
    return owner
}

function _treasury() {
    return _treasuryAddress
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

function sub_5307b38a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor22
    uint8(stor13.field_0) = 1
    stor22 = 30 * 10^6 * 24 * 3600
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

function sub_837546ad(?) {
    require calldata.size - 4 >= 64
    if stor6 and stor22 > -1 / stor6:
        revert with 0, 17
    if stor6 and arg2 > -1 / stor6:
        revert with 0, 17
    if stor7 and arg1 > -1 / stor7:
        revert with 0, 17
    if stor6 * arg2 > !(stor7 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor7 > !((stor6 * arg2) + (stor7 * arg1) / arg1):
        revert with 0, 17
    if not stor7 + ((stor6 * arg2) + (stor7 * arg1) / arg1):
        revert with 0, 18
    return (stor6 * stor22 / stor7 + ((stor6 * arg2) + (stor7 * arg1) / arg1))
}

function sub_1427b011(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor20[address(arg1)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(arg1)]:
        if stor5 and sub_7b01473d[address(arg1)] > -1 / stor5:
            revert with 0, 17
        return (stor5 * sub_7b01473d[address(arg1)])
    if block.timestamp - stor20[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor20[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)]))
}

function sub_6b54545e(?) {
    require calldata.size - 4 >= 32
    if stor6 and eth.balance(this.address) > -1 / stor6:
        revert with 0, 17
    if stor6 and stor22 > -1 / stor6:
        revert with 0, 17
    if stor7 and arg1 > -1 / stor7:
        revert with 0, 17
    if stor6 * stor22 > !(stor7 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor7 > !((stor6 * stor22) + (stor7 * arg1) / arg1):
        revert with 0, 17
    if not stor7 + ((stor6 * stor22) + (stor7 * arg1) / arg1):
        revert with 0, 18
    return (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor7 * arg1) / arg1))
}

function sub_8db47007(?) {
    require calldata.size - 4 >= 32
    if stor6 and stor22 > -1 / stor6:
        revert with 0, 17
    if stor6 and eth.balance(this.address) > -1 / stor6:
        revert with 0, 17
    if stor7 and arg1 > -1 / stor7:
        revert with 0, 17
    if stor6 * eth.balance(this.address) > !(stor7 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor7 > !((stor6 * eth.balance(this.address)) + (stor7 * arg1) / arg1):
        revert with 0, 17
    if not stor7 + ((stor6 * eth.balance(this.address)) + (stor7 * arg1) / arg1):
        revert with 0, 18
    return (stor6 * stor22 / stor7 + ((stor6 * eth.balance(this.address)) + (stor7 * arg1) / arg1))
}

function sub_0e2ab8e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor20[address(arg1)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(arg1)]:
        if stor5 and sub_7b01473d[address(arg1)] > -1 / stor5:
            revert with 0, 17
        if stor19[address(arg1)] > !(stor5 * sub_7b01473d[address(arg1)]):
            revert with 0, 17
        return (stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)]))
    if block.timestamp - stor20[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor20[address(arg1)]:
        revert with 0, 17
    if stor19[address(arg1)] > !((block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    return (stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)]))
}

function sub_753227f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor13.field_0)
    if address(arg1) != msg.sender:
        if not stor21[msg.sender]:
            if stor21[msg.sender] != msg.sender:
                stor21[msg.sender] = address(arg1)
    else:
        if not stor21[msg.sender]:
            if stor21[msg.sender] != msg.sender:
                stor21[msg.sender] = 0
    if block.timestamp < stor20[address(msg.sender)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(msg.sender)]:
        if stor5 and sub_7b01473d[address(msg.sender)] > -1 / stor5:
            revert with 0, 17
        if stor19[address(msg.sender)] > !(stor5 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / stor5):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / stor5
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor19[stor21[msg.sender]] > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor19[stor21[msg.sender]] += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 8
        if stor22 > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor22 += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor20[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor20[address(msg.sender)]:
            revert with 0, 17
        if stor19[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor5):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor5
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor19[stor21[msg.sender]] > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor19[stor21[msg.sender]] += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8
        if stor22 > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor22 += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5
}

function sub_3c21a257(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor20[address(arg1)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(arg1)]:
        if stor5 and sub_7b01473d[address(arg1)] > -1 / stor5:
            revert with 0, 17
        if stor19[address(arg1)] > !(stor5 * sub_7b01473d[address(arg1)]):
            revert with 0, 17
        if stor6 and eth.balance(this.address) > -1 / stor6:
            revert with 0, 17
        if stor6 and stor22 > -1 / stor6:
            revert with 0, 17
        if stor7 and stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)]) > -1 / stor7:
            revert with 0, 17
        if stor6 * stor22 > !((stor19[address(arg1)] * stor7) + (stor5 * sub_7b01473d[address(arg1)] * stor7)):
            revert with 0, 17
        if not stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)]):
            revert with 0, 18
        if stor7 > !((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (stor5 * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)])):
            revert with 0, 17
        if not stor7 + ((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (stor5 * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)])):
            revert with 0, 18
        return (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (stor5 * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (stor5 * sub_7b01473d[address(arg1)])))
    if block.timestamp - stor20[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor20[address(arg1)]:
        revert with 0, 17
    if stor19[address(arg1)] > !((block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    if stor6 and eth.balance(this.address) > -1 / stor6:
        revert with 0, 17
    if stor6 and stor22 > -1 / stor6:
        revert with 0, 17
    if stor7 and stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)]) > -1 / stor7:
        revert with 0, 17
    if stor6 * stor22 > !((stor19[address(arg1)] * stor7) + (block.timestamp * sub_7b01473d[address(arg1)] * stor7) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)] * stor7)):
        revert with 0, 17
    if not stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)]):
        revert with 0, 18
    if stor7 > !((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (block.timestamp * sub_7b01473d[address(arg1)] * stor7) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    if not stor7 + ((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (block.timestamp * sub_7b01473d[address(arg1)] * stor7) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 18
    return (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(arg1)] * stor7) + (block.timestamp * sub_7b01473d[address(arg1)] * stor7) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)] * stor7) / stor19[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor20[address(arg1)] * sub_7b01473d[address(arg1)])))
}

function sub_13b1df67(?) {
    require uint8(stor13.field_0)
    if block.timestamp < stor20[address(msg.sender)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(msg.sender)]:
        if stor5 and sub_7b01473d[address(msg.sender)] > -1 / stor5:
            revert with 0, 17
        if stor19[address(msg.sender)] > !(stor5 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        if stor6 and eth.balance(this.address) > -1 / stor6:
            revert with 0, 17
        if stor6 and stor22 > -1 / stor6:
            revert with 0, 17
        if stor7 and stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) > -1 / stor7:
            revert with 0, 17
        if stor6 * stor22 > !((stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7)):
            revert with 0, 17
        if not stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 18
        if stor7 > !((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 18
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) and stor8 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) and stor9 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) and stor10 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) and stor11 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) and stor12 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor22 > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor22 = stor22 + stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])
        call address(stor13.field_8) with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor14 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor9 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor15 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor16 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor11 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor17 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor12 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) < stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor8 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]))) - (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (stor5 * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)])) * stor8 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor20[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor20[address(msg.sender)]:
            revert with 0, 17
        if stor19[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 and eth.balance(this.address) > -1 / stor6:
            revert with 0, 17
        if stor6 and stor22 > -1 / stor6:
            revert with 0, 17
        if stor7 and stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) > -1 / stor7:
            revert with 0, 17
        if stor6 * stor22 > !((stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7)):
            revert with 0, 17
        if not stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]):
            revert with 0, 18
        if stor7 > !((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 18
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) and stor8 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) and stor9 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) and stor10 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) and stor11 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) and stor12 > -1 / stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor22 > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor22 = stor22 + stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])
        call address(stor13.field_8) with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor8 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor14 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor9 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor15 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor10 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor16 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor11 / 100 wei
             gas 2300 * is_zero(value) wei
        call stor17 with:
           value stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor12 / 100 wei
             gas 2300 * is_zero(value) wei
        if stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) < stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor8 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]))) - (stor6 * eth.balance(this.address) / stor7 + ((stor6 * stor22) + (stor19[address(msg.sender)] * stor7) + (block.timestamp * sub_7b01473d[address(msg.sender)] * stor7) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)] * stor7) / stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])) * stor8 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_85c0de50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor13.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor6 and stor22 > -1 / stor6:
        revert with 0, 17
    if stor6 and eth.balance(this.address) - msg.value > -1 / stor6:
        revert with 0, 17
    if stor7 and msg.value > -1 / stor7:
        revert with 0, 17
    if (eth.balance(this.address) * stor6) - (msg.value * stor6) > !(stor7 * msg.value):
        revert with 0, 17
    if not msg.value:
        revert with 0, 18
    if stor7 > !((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value):
        revert with 0, 17
    if not stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value):
        revert with 0, 18
    if stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) and stor8 > -1 / stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value):
        revert with 0, 17
    if stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) < stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100:
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) and stor9 > -1 / (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100):
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) < (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100:
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) and stor10 > -1 / (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100):
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) < (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100:
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) and stor11 > -1 / (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100):
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) < (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100:
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100) and stor12 > -1 / (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100):
        revert with 0, 17
    if (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100) < (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor12) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100 * stor12) / 100:
        revert with 0, 17
    if msg.value and stor8 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor9 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor10 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor11 > -1 / msg.value:
        revert with 0, 17
    if msg.value and stor12 > -1 / msg.value:
        revert with 0, 17
    call address(stor13.field_8) with:
       value msg.value * stor8 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor14 with:
       value msg.value * stor9 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor15 with:
       value msg.value * stor10 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor16 with:
       value msg.value * stor11 / 100 wei
         gas 2300 * is_zero(value) wei
    call stor17 with:
       value msg.value * stor12 / 100 wei
         gas 2300 * is_zero(value) wei
    if stor19[msg.sender] > !((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor12) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100 * stor12) / 100)):
        revert with 0, 17
    stor19[msg.sender] = stor19[msg.sender] + (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value)) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor12) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor12) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor11) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor11) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor10) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor10) - ((stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor9) - (stor6 * stor22 / stor7 + ((eth.balance(this.address) * stor6) - (msg.value * stor6) + (stor7 * msg.value) / msg.value) * stor8 / 100 * stor9) / 100 * stor10) / 100 * stor11) / 100 * stor12) / 100)
    require uint8(stor13.field_0)
    if address(arg1) != msg.sender:
        if not stor21[msg.sender]:
            if stor21[msg.sender] != msg.sender:
                stor21[msg.sender] = address(arg1)
    else:
        if not stor21[msg.sender]:
            if stor21[msg.sender] != msg.sender:
                stor21[msg.sender] = 0
    if block.timestamp < stor20[address(msg.sender)]:
        revert with 0, 17
    if stor5 < block.timestamp - stor20[address(msg.sender)]:
        if stor5 and sub_7b01473d[address(msg.sender)] > -1 / stor5:
            revert with 0, 17
        if stor19[address(msg.sender)] > !(stor5 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / stor5):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / stor5
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor19[stor21[msg.sender]] > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor19[stor21[msg.sender]] += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 8
        if stor22 > !(stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor22 += stor19[address(msg.sender)] + (stor5 * sub_7b01473d[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor20[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor20[address(msg.sender)]:
            revert with 0, 17
        if stor19[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor5):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor5
        stor19[msg.sender] = 0
        stor20[msg.sender] = block.timestamp
        if stor19[stor21[msg.sender]] > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor19[stor21[msg.sender]] += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8
        if stor22 > !(stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor22 += stor19[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor20[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5
}



}
