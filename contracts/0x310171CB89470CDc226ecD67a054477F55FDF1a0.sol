contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
mapping of uint256 sub_7b01473d;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of address stor8;
uint256 stor9;

function sub_7b01473d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b01473d[address(arg1)]
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

function sub_5307b38a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor9
    stor4 = 1
    stor9 = 30 * 10^6 * 24 * 3600
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
    if stor2 and stor9 > -1 / stor2:
        revert with 0, 17
    if stor2 and arg2 > -1 / stor2:
        revert with 0, 17
    if stor3 and arg1 > -1 / stor3:
        revert with 0, 17
    if stor2 * arg2 > !(stor3 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor3 > !((stor2 * arg2) + (stor3 * arg1) / arg1):
        revert with 0, 17
    if not stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
        revert with 0, 18
    return (stor2 * stor9 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
}

function sub_1427b011(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor7[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(arg1)]:
        if stor1 and sub_7b01473d[address(arg1)] > -1 / stor1:
            revert with 0, 17
        return (stor1 * sub_7b01473d[address(arg1)])
    if block.timestamp - stor7[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)]))
}

function sub_6b54545e(?) {
    require calldata.size - 4 >= 32
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor9 > -1 / stor2:
        revert with 0, 17
    if stor3 and arg1 > -1 / stor3:
        revert with 0, 17
    if stor2 * stor9 > !(stor3 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor3 > !((stor2 * stor9) + (stor3 * arg1) / arg1):
        revert with 0, 17
    if not stor3 + ((stor2 * stor9) + (stor3 * arg1) / arg1):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor9) + (stor3 * arg1) / arg1))
}

function sub_8db47007(?) {
    require calldata.size - 4 >= 32
    if stor2 and stor9 > -1 / stor2:
        revert with 0, 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor3 and arg1 > -1 / stor3:
        revert with 0, 17
    if stor2 * eth.balance(this.address) > !(stor3 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor3 > !((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1):
        revert with 0, 17
    if not stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1):
        revert with 0, 18
    return (stor2 * stor9 / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
}

function sub_0e2ab8e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor7[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(arg1)]:
        if stor1 and sub_7b01473d[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor6[address(arg1)] > !(stor1 * sub_7b01473d[address(arg1)]):
            revert with 0, 17
        return (stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)]))
    if block.timestamp - stor7[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 0, 17
    if stor6[address(arg1)] > !((block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    return (stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)]))
}

function sub_13b1df67(?) {
    require stor4
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(msg.sender)]:
        if stor1 and sub_7b01473d[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor6[address(msg.sender)] > !(stor1 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor9 > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor9 = stor9 + stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)])
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 0, 17
        if stor6[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor9 > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        stor9 = stor9 + stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)])
}

function sub_753227f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor4
    if address(arg1) != msg.sender:
        if not stor8[msg.sender]:
            if stor8[msg.sender] != msg.sender:
                stor8[msg.sender] = address(arg1)
    else:
        if not stor8[msg.sender]:
            if stor8[msg.sender] != msg.sender:
                stor8[msg.sender] = 0
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(msg.sender)]:
        if stor1 and sub_7b01473d[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor6[address(msg.sender)] > !(stor1 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / stor1
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor6[stor8[msg.sender]] > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor6[stor8[msg.sender]] += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 8
        if stor9 > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor9 += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 0, 17
        if stor6[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor1
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor6[stor8[msg.sender]] > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor6[stor8[msg.sender]] += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8
        if stor9 > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor9 += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5
}

function sub_3c21a257(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor7[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(arg1)]:
        if stor1 and sub_7b01473d[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor6[address(arg1)] > !(stor1 * sub_7b01473d[address(arg1)]):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor9 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor9 > !((stor6[address(arg1)] * stor3) + (stor1 * sub_7b01473d[address(arg1)] * stor3)):
            revert with 0, 17
        if not stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (stor1 * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (stor1 * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)])):
            revert with 0, 18
        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (stor1 * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (stor1 * sub_7b01473d[address(arg1)])))
    if block.timestamp - stor7[address(arg1)] and sub_7b01473d[address(arg1)] > -1 / block.timestamp - stor7[address(arg1)]:
        revert with 0, 17
    if stor6[address(arg1)] > !((block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor9 > -1 / stor2:
        revert with 0, 17
    if stor3 and stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)]) > -1 / stor3:
        revert with 0, 17
    if stor2 * stor9 > !((stor6[address(arg1)] * stor3) + (block.timestamp * sub_7b01473d[address(arg1)] * stor3) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)] * stor3)):
        revert with 0, 17
    if not stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)]):
        revert with 0, 18
    if stor3 > !((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (block.timestamp * sub_7b01473d[address(arg1)] * stor3) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 17
    if not stor3 + ((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (block.timestamp * sub_7b01473d[address(arg1)] * stor3) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)])):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor9) + (stor6[address(arg1)] * stor3) + (block.timestamp * sub_7b01473d[address(arg1)] * stor3) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)] * stor3) / stor6[address(arg1)] + (block.timestamp * sub_7b01473d[address(arg1)]) - (stor7[address(arg1)] * sub_7b01473d[address(arg1)])))
}

function sub_85c0de50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor4
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor2 and stor9 > -1 / stor2:
        revert with 0, 17
    if stor2 and eth.balance(this.address) - msg.value > -1 / stor2:
        revert with 0, 17
    if stor3 and msg.value > -1 / stor3:
        revert with 0, 17
    if (eth.balance(this.address) * stor2) - (msg.value * stor2) > !(stor3 * msg.value):
        revert with 0, 17
    if not msg.value:
        revert with 0, 18
    if stor3 > !((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 0, 17
    if not stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 0, 18
    if stor6[msg.sender] > !(stor2 * stor9 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)):
        revert with 0, 17
    stor6[msg.sender] += stor2 * stor9 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)
    require stor4
    if address(arg1) != msg.sender:
        if not stor8[msg.sender]:
            if stor8[msg.sender] != msg.sender:
                stor8[msg.sender] = address(arg1)
    else:
        if not stor8[msg.sender]:
            if stor8[msg.sender] != msg.sender:
                stor8[msg.sender] = 0
    if block.timestamp < stor7[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor7[address(msg.sender)]:
        if stor1 and sub_7b01473d[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor6[address(msg.sender)] > !(stor1 * sub_7b01473d[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / stor1
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor6[stor8[msg.sender]] > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor6[stor8[msg.sender]] += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 8
        if stor9 > !(stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor9 += stor6[address(msg.sender)] + (stor1 * sub_7b01473d[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor7[address(msg.sender)] and sub_7b01473d[address(msg.sender)] > -1 / block.timestamp - stor7[address(msg.sender)]:
            revert with 0, 17
        if stor6[address(msg.sender)] > !((block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_7b01473d[msg.sender] > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_7b01473d[msg.sender] += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / stor1
        stor6[msg.sender] = 0
        stor7[msg.sender] = block.timestamp
        if stor6[stor8[msg.sender]] > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8):
            revert with 0, 17
        stor6[stor8[msg.sender]] += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 8
        if stor9 > !(stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5):
            revert with 0, 17
        stor9 += stor6[address(msg.sender)] + (block.timestamp * sub_7b01473d[address(msg.sender)]) - (stor7[address(msg.sender)] * sub_7b01473d[address(msg.sender)]) / 5
}



}
