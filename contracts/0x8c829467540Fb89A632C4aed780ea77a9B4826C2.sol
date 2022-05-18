contract main {




// =====================  Runtime code  =====================


#
#  - getPrice(address arg1)
#  - sub_4d65231a(?)
#  - getPriceInfo(address arg1)
#  - getPrices(address[] arg1)
#
mapping of address stor0;
mapping of struct stor1;
mapping of uint256 stor2;
mapping of address sub_d18e33fa;
address cEtherAddress;
address sub_50ed1471Address;
address joeAddress;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
uint128 storEE9B; offset 160
address storEE9B;

function sub_50ed1471(?) payable {
    return sub_50ed1471Address
}

function CEther() payable {
    return cEtherAddress
}

function getMultiSignatureAddress() payable {
    return multiSignatureAddress
}

function owner() payable {
    return owner
}

function joe() payable {
    return joeAddress
}

function sub_d18e33fa(?) payable {
    require calldata.size - 4 >= 32
    return sub_d18e33fa[arg1]
}

function _fallback() payable {
    revert
}

function txOrigin() payable {
    return address(storEE9B.field_0), address(stor818A.field_0)
}

function getUnderlyingAggregator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1], stor1[arg1].field_0
}

function isOwner() payable {
    if owner != msg.sender:
        return (msg.sender == owner)
    return bool(ext_code.size(msg.sender))
}

function getAssetsAggregator(address arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[address(arg1)], stor1[address(arg1)].field_0
}

function sub_b40643a9(?) payable {
    if address(storEE9B.field_0) == msg.sender:
        return True
    return (address(stor818A.field_0) == msg.sender)
}

function getUnderlyingPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[arg1]:
        if not stor2[arg1]:
            return 0
        return stor2[arg1]
    require ext_code.size(stor0[arg1])
    staticcall stor0[arg1].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return (10^stor1[arg1].field_0 * ext_call.return_data[32])
}

function setUnderlyingPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
    stor2[arg1] = arg2
}

function setTokenPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
    stor2[address(arg1)] = arg2
}

function setSwapPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
    sub_d18e33fa[address(arg1)] = arg2
}

function sub_4b4a0343(?) payable {
    require calldata.size - 4 >= 96
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
    if arg1 <= 0:
        revert with 0, 'underlying cannot be zero'
    stor0[arg1] = arg2
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[arg1].field_0 = uint8(-ext_call.return_data[0] + 36) - arg3
    emit 0x879ef55b: arg1, arg2, msg.sender
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0xfe70726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    if not ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0xfe70726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    stor1221 = 0
}

function sub_b935664e(?) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
    stor0[address(arg1)] = arg2
    if not arg1:
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint8(stor1[address(arg1)].field_0) = uint8(-ext_call.return_data[0] + 18)
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint8(stor1[address(arg1)].field_0) = uint8((-2 * ext_call.return_data[0]) + 36)
    Mask(248, 0, stor1[address(arg1)].field_8) = 0
    emit 0x879ef55b: address(arg1), arg2, msg.sender
}

function sub_72b5ed33(?) payable {
    require ext_code.size(cEtherAddress)
    staticcall cEtherAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor0:
        if not stor2[0]:
            return 0
        if not stor2[0]:
            return 0
        if ext_call.return_data[0] * stor2[0] / stor2[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (ext_call.return_data[0] * stor2[0] / 10^18)
    require ext_code.size(stor0)
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not 10^stor1[0].field_0 * ext_call.return_data[32]:
        return 0
    if ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^stor1[0].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    return (ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^18)
}

function setUnderlyingAggregator(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    if arg1 <= 0:
        revert with 0, 'underlying cannot be zero'
    stor0[arg1] = arg2
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[arg1].field_0 = uint8(-ext_call.return_data[0] + 36) - arg3
    emit 0x879ef55b: arg1, arg2, msg.sender
}

function sub_f6c1da1a(?) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    emit OriginTransferred(arg1, arg2);
    if address(storEE9B.field_0) == arg1:
        address(storEE9B.field_0) = arg2
        Mask(96, 0, storEE9B.field_160) = 0
    else:
        if address(stor818A.field_0) != arg1:
            revert with 0, 
                        32,
                        50,
                        0x774f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor818A.field_0) = arg2
        Mask(96, 0, stor818A.field_160) = 0
}

function sub_140804a4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor0[ext_call.return_data[12 len 20]]:
        if not stor2[address(ext_call.return_data[0])]:
            return 0
        if not stor2[address(ext_call.return_data[0])]:
            return 0
        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18)
    require ext_code.size(stor0[ext_call.return_data[12 len 20]])
    staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
        return 0
    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    return (ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18)
}

function sub_e9929e7b(?) payable {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    stor0[address(arg1)] = arg2
    if not arg1:
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint8(stor1[address(arg1)].field_0) = uint8(-ext_call.return_data[0] + 18)
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint8(stor1[address(arg1)].field_0) = uint8((-2 * ext_call.return_data[0]) + 36)
    Mask(248, 0, stor1[address(arg1)].field_8) = 0
    emit 0x879ef55b: address(arg1), arg2, msg.sender
}

function sub_4c937cb9(?) payable {
    require calldata.size - 4 >= 32
    if not sub_d18e33fa[address(arg1)]:
        return 0
    require ext_code.size(sub_d18e33fa[address(arg1)])
    staticcall sub_d18e33fa[address(arg1)].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d18e33fa[address(arg1)])
    staticcall sub_d18e33fa[address(arg1)].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d18e33fa[address(arg1)])
    staticcall sub_d18e33fa[address(arg1)].token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != arg1:
        if not stor0[address(ext_call.return_data[0])]:
            if not stor2[address(ext_call.return_data[0])]:
                if Mask(112, 0, ext_call.return_data[32]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    return (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        else:
            require ext_code.size(stor0[address(ext_call.return_data[0])])
            staticcall stor0[address(ext_call.return_data[0])].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if Mask(112, 0, ext_call.return_data[32]):
                return (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
    else:
        if not stor0[ext_call.return_data[12 len 20]]:
            if not stor2[address(ext_call.return_data[0])]:
                if Mask(112, 0, ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[0]))
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    return (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        else:
            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if Mask(112, 0, ext_call.return_data[0]):
                return (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 0, 32)))
    revert
}

function sub_b29a28b8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor0[ext_call.return_data[12 len 20]]:
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor2[address(ext_call.return_data[0])]:
            if not stor0[ext_call.return_data[12 len 20]]:
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor2[address(ext_call.return_data[0])]:
                    if ext_call.return_data[0]:
                        return (0 / ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        return (2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
            else:
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    return (2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
        else:
            if not stor0[ext_call.return_data[12 len 20]]:
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor2[address(ext_call.return_data[0])]:
                    if ext_call.return_data[0]:
                        return (2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        return ((stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
            else:
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    return ((stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
    else:
        require ext_code.size(stor0[ext_call.return_data[12 len 20]])
        staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor0[ext_call.return_data[12 len 20]]:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2[address(ext_call.return_data[0])]:
                if ext_call.return_data[0]:
                    return (2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    return ((10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
        else:
            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return ((10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
