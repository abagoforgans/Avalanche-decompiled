contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5; offset 8
mapping of uint256 sub_8dfa6afd;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of address stor9;
uint256 stor10;
uint256 contractStarted;

function contractStarted() {
    return contractStarted
}

function owner() {
    return owner
}

function sub_8dfa6afd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8dfa6afd[address(arg1)]
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

function seedMarket() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor10
    uint8(stor5.field_0) = 1
    stor10 = 30 * 10^6 * 24 * 3600
    contractStarted = block.timestamp
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

function sub_9a68404d(?) {
    require msg.sender == address(stor5.field_8)
    if 4320 * 24 * 3600 > !contractStarted:
        revert with 0, 17
    if contractStarted + (4320 * 24 * 3600) < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'releaseTime: current time is before release time'
    call address(stor5.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bed46ec5(?) {
    require calldata.size - 4 >= 64
    if stor2 and stor10 > -1 / stor2:
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
    return (stor2 * stor10 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
}

function sub_71733b48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_8dfa6afd[address(arg1)] > -1 / stor1:
            revert with 0, 17
        return (stor1 * sub_8dfa6afd[address(arg1)])
    if block.timestamp - stor8[address(arg1)] and sub_8dfa6afd[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)]))
}

function sub_8089f83e(?) {
    require calldata.size - 4 >= 32
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor10 > -1 / stor2:
        revert with 0, 17
    if stor3 and arg1 > -1 / stor3:
        revert with 0, 17
    if stor2 * stor10 > !(stor3 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor3 > !((stor2 * stor10) + (stor3 * arg1) / arg1):
        revert with 0, 17
    if not stor3 + ((stor2 * stor10) + (stor3 * arg1) / arg1):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor3 * arg1) / arg1))
}

function sub_f07b219a(?) {
    require calldata.size - 4 >= 32
    if stor2 and stor10 > -1 / stor2:
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
    return (stor2 * stor10 / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
}

function sub_3ed65474(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_8dfa6afd[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(arg1)] > !(stor1 * sub_8dfa6afd[address(arg1)]):
            revert with 0, 17
        return (stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)]))
    if block.timestamp - stor8[address(arg1)] and sub_8dfa6afd[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    if stor7[address(arg1)] > !((block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)])):
        revert with 0, 17
    return (stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)]))
}

function sub_1fe5709e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor5.field_0)
    if address(arg1) != msg.sender:
        if not stor9[msg.sender]:
            if stor9[msg.sender] != msg.sender:
                stor9[msg.sender] = address(arg1)
    else:
        if not stor9[msg.sender]:
            if stor9[msg.sender] != msg.sender:
                stor9[msg.sender] = 0
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_8dfa6afd[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_8dfa6afd[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_8dfa6afd[msg.sender] > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_8dfa6afd[msg.sender] += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[stor9[msg.sender]] > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 8):
            revert with 0, 17
        stor7[stor9[msg.sender]] += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 8
        if stor10 > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 5):
            revert with 0, 17
        stor10 += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_8dfa6afd[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_8dfa6afd[msg.sender] > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_8dfa6afd[msg.sender] += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[stor9[msg.sender]] > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 8):
            revert with 0, 17
        stor7[stor9[msg.sender]] += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 8
        if stor10 > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 5):
            revert with 0, 17
        stor10 += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 5
}

function sub_d138ee2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_8dfa6afd[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(arg1)] > !(stor1 * sub_8dfa6afd[address(arg1)]):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor10 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor10 > !((stor7[address(arg1)] * stor3) + (stor1 * sub_8dfa6afd[address(arg1)] * stor3)):
            revert with 0, 17
        if not stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)])):
            revert with 0, 18
        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (stor1 * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_8dfa6afd[address(arg1)])))
    if block.timestamp - stor8[address(arg1)] and sub_8dfa6afd[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    if stor7[address(arg1)] > !((block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)])):
        revert with 0, 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor10 > -1 / stor2:
        revert with 0, 17
    if stor3 and stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)]) > -1 / stor3:
        revert with 0, 17
    if stor2 * stor10 > !((stor7[address(arg1)] * stor3) + (block.timestamp * sub_8dfa6afd[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)] * stor3)):
        revert with 0, 17
    if not stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)]):
        revert with 0, 18
    if stor3 > !((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_8dfa6afd[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)])):
        revert with 0, 17
    if not stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_8dfa6afd[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)])):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_8dfa6afd[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_8dfa6afd[address(arg1)]) - (stor8[address(arg1)] * sub_8dfa6afd[address(arg1)])))
}

function sub_093e9f7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor5.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor2 and stor10 > -1 / stor2:
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
    if stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) and stor4 > -1 / stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 0, 17
    if stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) < stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100:
        revert with 0, 17
    if msg.value and stor4 > -1 / msg.value:
        revert with 0, 17
    call address(stor5.field_8) with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor7[msg.sender] > !((stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)):
        revert with 0, 17
    stor7[msg.sender] = stor7[msg.sender] + (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * stor10 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)
    require uint8(stor5.field_0)
    if address(arg1) != msg.sender:
        if not stor9[msg.sender]:
            if stor9[msg.sender] != msg.sender:
                stor9[msg.sender] = address(arg1)
    else:
        if not stor9[msg.sender]:
            if stor9[msg.sender] != msg.sender:
                stor9[msg.sender] = 0
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_8dfa6afd[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_8dfa6afd[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_8dfa6afd[msg.sender] > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_8dfa6afd[msg.sender] += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[stor9[msg.sender]] > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 8):
            revert with 0, 17
        stor7[stor9[msg.sender]] += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 8
        if stor10 > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 5):
            revert with 0, 17
        stor10 += stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_8dfa6afd[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_8dfa6afd[msg.sender] > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_8dfa6afd[msg.sender] += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[stor9[msg.sender]] > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 8):
            revert with 0, 17
        stor7[stor9[msg.sender]] += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 8
        if stor10 > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 5):
            revert with 0, 17
        stor10 += stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) / 5
}

function sellRewards() {
    require uint8(stor5.field_0)
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_8dfa6afd[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_8dfa6afd[address(msg.sender)]):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor10 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor10 > !((stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3)):
            revert with 0, 17
        if not stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor10 > !(stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        stor10 = stor10 + stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_8dfa6afd[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor10 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor10 > !((stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3)):
            revert with 0, 17
        if not stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor10 > !(stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])):
            revert with 0, 17
        stor10 = stor10 + stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor10) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_8dfa6afd[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_8dfa6afd[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_8dfa6afd[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
