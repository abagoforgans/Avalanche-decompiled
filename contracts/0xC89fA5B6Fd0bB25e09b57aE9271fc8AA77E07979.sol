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
mapping of uint256 sub_4b634b06;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of address stor9;
mapping of struct sub_153d2bac;
mapping of uint256 sub_b7bb15d4;
mapping of uint256 sub_e538931c;
uint256 sub_48e1d3d2;
uint256 stor14;

function sub_153d2bac(?) {
    require calldata.size - 4 >= 32
    return sub_153d2bac[arg1].field_0, sub_153d2bac[arg1].field_256, sub_153d2bac[arg1].field_512
}

function sub_48e1d3d2(?) {
    return sub_48e1d3d2
}

function sub_4b634b06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b634b06[address(arg1)]
}

function owner() {
    return owner
}

function sub_b7bb15d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b7bb15d4[arg1]
}

function sub_e538931c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e538931c[arg1]
}

function _fallback() payable {
    revert
}

function seedMarket() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor14
    uint8(stor5.field_0) = 1
    stor14 = 30 * 10^6 * 24 * 3600
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_9b5d5df3(?) {
    require calldata.size - 4 >= 64
    if stor2 and stor14 > -1 / stor2:
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
    return (stor2 * stor14 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
}

function sub_a2c2ad4b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 0, 17
        return (stor1 * sub_4b634b06[address(arg1)])
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_4bfb617a(?) {
    require calldata.size - 4 >= 32
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor14 > -1 / stor2:
        revert with 0, 17
    if stor3 and arg1 > -1 / stor3:
        revert with 0, 17
    if stor2 * stor14 > !(stor3 * arg1):
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if stor3 > !((stor2 * stor14) + (stor3 * arg1) / arg1):
        revert with 0, 17
    if not stor3 + ((stor2 * stor14) + (stor3 * arg1) / arg1):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor3 * arg1) / arg1))
}

function sub_fd2d563b(?) {
    require calldata.size - 4 >= 32
    if stor2 and stor14 > -1 / stor2:
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
    return (stor2 * stor14 / stor3 + ((stor2 * eth.balance(this.address)) + (stor3 * arg1) / arg1))
}

function sub_c8d041af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(arg1)] > !(stor1 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        return (stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]))
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    if stor7[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    return (stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]))
}

function sub_2c878413(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor8[address(arg1)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(arg1)]:
        if stor1 and sub_4b634b06[address(arg1)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(arg1)] > !(stor1 * sub_4b634b06[address(arg1)]):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor14 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor14 > !((stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3)):
            revert with 0, 17
        if not stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])):
            revert with 0, 18
        return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (stor1 * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (stor1 * sub_4b634b06[address(arg1)])))
    if block.timestamp - stor8[address(arg1)] and sub_4b634b06[address(arg1)] > -1 / block.timestamp - stor8[address(arg1)]:
        revert with 0, 17
    if stor7[address(arg1)] > !((block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if stor2 and eth.balance(this.address) > -1 / stor2:
        revert with 0, 17
    if stor2 and stor14 > -1 / stor2:
        revert with 0, 17
    if stor3 and stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]) > -1 / stor3:
        revert with 0, 17
    if stor2 * stor14 > !((stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3)):
        revert with 0, 17
    if not stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)]):
        revert with 0, 18
    if stor3 > !((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 17
    if not stor3 + ((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])):
        revert with 0, 18
    return (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(arg1)] * stor3) + (block.timestamp * sub_4b634b06[address(arg1)] * stor3) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)] * stor3) / stor7[address(arg1)] + (block.timestamp * sub_4b634b06[address(arg1)]) - (stor8[address(arg1)] * sub_4b634b06[address(arg1)])))
}

function sub_c41a54d2(?) {
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
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor7[stor9[msg.sender]] > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741):
            revert with 0, 17
        stor7[stor9[msg.sender]] += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741
        if stor9[msg.sender]:
            if not sub_e538931c[stor9[msg.sender]]:
                if sub_48e1d3d2 > -2:
                    revert with 0, 17
                sub_48e1d3d2++
                sub_b7bb15d4[stor9[msg.sender]] = sub_48e1d3d2 + 1
        if stor9[msg.sender]:
            if sub_e538931c[stor9[msg.sender]] > !stor7[stor9[msg.sender]]:
                revert with 0, 17
            sub_e538931c[stor9[msg.sender]] += stor7[stor9[msg.sender]]
            if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_256 > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_512 > -2:
                revert with 0, 17
            sub_153d2bac[stor11[stor9[msg.sender]]].field_0 = stor9[msg.sender]
            sub_153d2bac[stor11[stor9[msg.sender]]].field_256 += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741
            sub_153d2bac[stor11[stor9[msg.sender]]].field_512++
        if stor14 > !(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor7[stor9[msg.sender]] > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741):
            revert with 0, 17
        stor7[stor9[msg.sender]] += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741
        if stor9[msg.sender]:
            if not sub_e538931c[stor9[msg.sender]]:
                if sub_48e1d3d2 > -2:
                    revert with 0, 17
                sub_48e1d3d2++
                sub_b7bb15d4[stor9[msg.sender]] = sub_48e1d3d2 + 1
        if stor9[msg.sender]:
            if sub_e538931c[stor9[msg.sender]] > !stor7[stor9[msg.sender]]:
                revert with 0, 17
            sub_e538931c[stor9[msg.sender]] += stor7[stor9[msg.sender]]
            if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_256 > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_512 > -2:
                revert with 0, 17
            sub_153d2bac[stor11[stor9[msg.sender]]].field_0 = stor9[msg.sender]
            sub_153d2bac[stor11[stor9[msg.sender]]].field_256 += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741
            sub_153d2bac[stor11[stor9[msg.sender]]].field_512++
        if stor14 > !(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_73d8caf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint8(stor5.field_0)
    if eth.balance(this.address) < msg.value:
        revert with 0, 17
    if stor2 and stor14 > -1 / stor2:
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
    if stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) and stor4 > -1 / stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value):
        revert with 0, 17
    if stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) < stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100:
        revert with 0, 17
    if msg.value and stor4 > -1 / msg.value:
        revert with 0, 17
    call address(stor5.field_8) with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor7[msg.sender] > !((stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)):
        revert with 0, 17
    stor7[msg.sender] = stor7[msg.sender] + (stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value)) - (stor2 * stor14 / stor3 + ((eth.balance(this.address) * stor2) - (msg.value * stor2) + (stor3 * msg.value) / msg.value) * stor4 / 100)
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
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor7[stor9[msg.sender]] > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741):
            revert with 0, 17
        stor7[stor9[msg.sender]] += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741
        if stor9[msg.sender]:
            if not sub_e538931c[stor9[msg.sender]]:
                if sub_48e1d3d2 > -2:
                    revert with 0, 17
                sub_48e1d3d2++
                sub_b7bb15d4[stor9[msg.sender]] = sub_48e1d3d2 + 1
        if stor9[msg.sender]:
            if sub_e538931c[stor9[msg.sender]] > !stor7[stor9[msg.sender]]:
                revert with 0, 17
            sub_e538931c[stor9[msg.sender]] += stor7[stor9[msg.sender]]
            if stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_256 > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_512 > -2:
                revert with 0, 17
            sub_153d2bac[stor11[stor9[msg.sender]]].field_0 = stor9[msg.sender]
            sub_153d2bac[stor11[stor9[msg.sender]]].field_256 += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * stor1 * sub_4b634b06[address(msg.sender)]) / 740740741
            sub_153d2bac[stor11[stor9[msg.sender]]].field_512++
        if stor14 > !(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) / 5
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if sub_4b634b06[msg.sender] > !(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1):
            revert with 0, 17
        sub_4b634b06[msg.sender] += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / stor1
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor7[stor9[msg.sender]] > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741):
            revert with 0, 17
        stor7[stor9[msg.sender]] += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741
        if stor9[msg.sender]:
            if not sub_e538931c[stor9[msg.sender]]:
                if sub_48e1d3d2 > -2:
                    revert with 0, 17
                sub_48e1d3d2++
                sub_b7bb15d4[stor9[msg.sender]] = sub_48e1d3d2 + 1
        if stor9[msg.sender]:
            if sub_e538931c[stor9[msg.sender]] > !stor7[stor9[msg.sender]]:
                revert with 0, 17
            sub_e538931c[stor9[msg.sender]] += stor7[stor9[msg.sender]]
            if stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) and 100 * 10^6 > -1 / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_256 > !((100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741):
                revert with 0, 17
            if sub_153d2bac[stor11[stor9[msg.sender]]].field_512 > -2:
                revert with 0, 17
            sub_153d2bac[stor11[stor9[msg.sender]]].field_0 = stor9[msg.sender]
            sub_153d2bac[stor11[stor9[msg.sender]]].field_256 += (100 * 10^6 * stor7[address(msg.sender)]) + (100 * 10^6 * block.timestamp * sub_4b634b06[address(msg.sender)]) - (100 * 10^6 * stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 740740741
            sub_153d2bac[stor11[stor9[msg.sender]]].field_512++
        if stor14 > !(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5):
            revert with 0, 17
        stor14 += stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) / 5
}

function sub_eeb22a05(?) {
    require uint8(stor5.field_0)
    if block.timestamp < stor8[address(msg.sender)]:
        revert with 0, 17
    if stor1 < block.timestamp - stor8[address(msg.sender)]:
        if stor1 and sub_4b634b06[address(msg.sender)] > -1 / stor1:
            revert with 0, 17
        if stor7[address(msg.sender)] > !(stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor14 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor14 > !((stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3)):
            revert with 0, 17
        if not stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor14 > !(stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor14 = stor14 + stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (stor1 * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (stor1 * sub_4b634b06[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    else:
        if block.timestamp - stor8[address(msg.sender)] and sub_4b634b06[address(msg.sender)] > -1 / block.timestamp - stor8[address(msg.sender)]:
            revert with 0, 17
        if stor7[address(msg.sender)] > !((block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if stor2 and eth.balance(this.address) > -1 / stor2:
            revert with 0, 17
        if stor2 and stor14 > -1 / stor2:
            revert with 0, 17
        if stor3 and stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]) > -1 / stor3:
            revert with 0, 17
        if stor2 * stor14 > !((stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3)):
            revert with 0, 17
        if not stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]):
            revert with 0, 18
        if stor3 > !((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        if not stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 18
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) and stor4 > -1 / stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor7[msg.sender] = 0
        stor8[msg.sender] = block.timestamp
        if stor14 > !(stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])):
            revert with 0, 17
        stor14 = stor14 + stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])
        call address(stor5.field_8) with:
           value stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) < stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100:
            revert with 0, 17
        call msg.sender with:
           value (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)]))) - (stor2 * eth.balance(this.address) / stor3 + ((stor2 * stor14) + (stor7[address(msg.sender)] * stor3) + (block.timestamp * sub_4b634b06[address(msg.sender)] * stor3) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)] * stor3) / stor7[address(msg.sender)] + (block.timestamp * sub_4b634b06[address(msg.sender)]) - (stor8[address(msg.sender)] * sub_4b634b06[address(msg.sender)])) * stor4 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
