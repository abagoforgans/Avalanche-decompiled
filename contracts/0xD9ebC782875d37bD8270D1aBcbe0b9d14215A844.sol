contract main {




// =====================  Runtime code  =====================


#
#  - calcDelta(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, int256 arg5, int256 arg6)
#  - calc(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - calcDeltaWithFeeAndSlippage(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, int256 arg5, int256 arg6, uint256 arg7)
#  - calcPrice2(uint256 arg1, address arg2)
#  - calcPrice5(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#  - calcPrice(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - sub_cbec8782(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governorAddress;
mapping of uint256 configA;
mapping of address productImplementations;
mapping of address sub_0884a0b6;
mapping of address sub_47f8316f;
array of address sub_e1fb73d9;
array of address sub_8f98c646;
uint256 feeRate;
uint8 stor109;
address storDCC0;
array of address stor7887053984229333715756243741084912719879447020693965939365260134600710199889;
uint128 stor3D09; offset 160
address stor3D09;
address storB531;
uint256 storBC22;
array of address stor85606912040150585808358299647458656657391986846227832211658412328070808574132;
address storC878;

function sub_0884a0b6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_0884a0b6[arg1][arg2][arg3][arg4]
}

function productImplementations(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return productImplementations[arg1]
}

function governor() payable {
    return governorAddress
}

function length() payable {
    return sub_e1fb73d9.length
}

function sub_47f8316f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_47f8316f[arg1][arg2][arg3][arg4]
}

function getConfigA(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return configA[arg1 xor arg2]
}

function getConfigI(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return configA[arg2 xor arg1]
}

function getConfig(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return configA[arg1]
}

function sub_8f98c646(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8f98c646.length
    return sub_8f98c646[arg1]
}

function feeRate() payable {
    return feeRate
}

function sub_e1fb73d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e1fb73d9.length
    return sub_e1fb73d9[arg1]
}

function _fallback() payable {
    revert
}

function renounceGovernorship() payable {
    if governorAddress != msg.sender:
        require msg.sender == storB531
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function setConfig(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg2 != configA[arg1]:
        configA[arg1] = arg2
}

function setConfigI(bytes32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configA[arg2 xor arg1]:
        configA[arg2 xor arg1] = arg3
}

function upgradeProductImplementationsTo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    storDCC0 = arg1
    storC878 = arg2
}

function setConfigA(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    if arg3 != configA[arg1 xor arg2]:
        configA[arg1 xor arg2] = arg3
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function setFee(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if governorAddress != msg.sender:
        require msg.sender == storB531
    require arg1 <= 10^17
    feeRate = arg1
    address(stor3D09.field_0) = arg2
    Mask(96, 0, stor3D09.field_160) = 0
}

function priceTo18(uint256 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        if not 10^arg3:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^arg3)
    if 10^arg2 * arg1 / arg1 != 10^arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10^arg3:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^arg2 * arg1 / 10^arg3)
}

function priceFrom18(uint256 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        if not 10^arg2:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^arg2)
    if 10^arg3 * arg1 / arg1 != 10^arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10^arg2:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^arg3 * arg1 / 10^arg2)
}

function __Factory_init_unchained(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender == governorAddress:
        storDCC0 = arg1
        storC878 = arg2
    else:
        require msg.sender == storB531
        storDCC0 = arg1
        storC878 = arg2
        if governorAddress != msg.sender:
            require msg.sender == storB531
    feeRate = 5 * 10^15
    address(stor3D09.field_0) = arg3
    Mask(96, 0, stor3D09.field_160) = 0
}

function transferAuth_(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not configA['isAuthority' << 168 xor msg.sender]:
        revert with 0, 'Not Authority'
    require ext_code.size(arg1)
    call arg1.transfer_(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __Governable_init_unchained(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function priceTo18a(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg3)
    staticcall arg3.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not arg1:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^uint8(ext_call.return_data[0]))
    if 10^uint8(ext_call.return_data[0]) * arg1 / arg1 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    return (10^uint8(ext_call.return_data[0]) * arg1 / 10^uint8(ext_call.return_data[0]))
}

function priceFrom18a(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg3)
    staticcall arg3.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not arg1:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 10^uint8(ext_call.return_data[0]))
    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    return (10^uint8(ext_call.return_data[0]) * arg1 / 10^uint8(ext_call.return_data[0]))
}

function __Factory_init(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        governorAddress = arg1
        emit GovernorshipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            governorAddress = arg1
            emit GovernorshipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                governorAddress = arg1
                emit GovernorshipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
    if msg.sender == governorAddress:
        stor109 = 1
        storDCC0 = arg2
        storC878 = arg3
    else:
        require msg.sender == storB531
        stor109 = 1
        if msg.sender == governorAddress:
            storDCC0 = arg2
            storC878 = arg3
        else:
            require msg.sender == storB531
            storDCC0 = arg2
            storC878 = arg3
            if governorAddress != msg.sender:
                require msg.sender == storB531
    feeRate = 5 * 10^15
    address(stor3D09.field_0) = arg4
    Mask(96, 0, stor3D09.field_160) = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function createOption(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if not arg2:
        revert with 0, 'ZERO_ADDRESS'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'underlying and currency should isContract'
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'underlying and currency should isContract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'underlying and currency should isContract'
    if not ext_code.hash(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'underlying and currency should isContract'
    if arg3 >= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'priceCap should biger than priceFloor'
    if not storBC22:
        require msg.sender == governorAddress
    if sub_0884a0b6[address(arg1)][address(arg2)][arg3][arg4]:
        revert with 0, 'the Call/Put exist already'
    create2 contract with 0 wei
                    salt: sha3(0x43616c6c00000000000000000000000000000000000000000000000000000000, arg1, arg2, arg3, arg4)
                    code: code.data[13497 len 1236]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x74845865 with:
         gas gas_remaining wei
        args address(this.address), 0x43616c6c00000000000000000000000000000000000000000000000000000000, 96, 132, __Call_init(address rg1, address rg2, uint256 rg3, uint256 rg4), address(arg1) << 64, 0, address(arg2), arg3, arg4, 0, address(this.address) << 32 >> 800, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create2 contract with 0 wei
                    salt: sha3(0x5075740000000000000000000000000000000000000000000000000000000000, arg1, arg2, arg3, arg4)
                    code: code.data[13497 len 1236]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x74845865 with:
         gas gas_remaining wei
        args address(this.address), 0x5075740000000000000000000000000000000000000000000000000000000000, 96, 132, __Put_init(address rg1, address rg2, uint256 rg3, uint256 rg4), address(arg1) << 64, 0, address(arg2), arg3, arg4, 0, address(this.address) << 32 >> 800, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_0884a0b6[address(arg1)][address(arg2)][arg3][arg4] = address(create2.new_address)
    sub_47f8316f[address(arg1)][address(arg2)][arg3][arg4] = address(create2.new_address)
    sub_e1fb73d9.length++
    stor116F[stor106.length] = address(create2.new_address)
    sub_8f98c646.length++
    storBD43[stor107.length] = address(create2.new_address)
    emit CreateOption(arg3, arg4, address(create2.new_address), address(create2.new_address), sub_e1fb73d9.length, msg.sender, arg1, arg2);
    return address(create2.new_address), address(create2.new_address)
}



}
