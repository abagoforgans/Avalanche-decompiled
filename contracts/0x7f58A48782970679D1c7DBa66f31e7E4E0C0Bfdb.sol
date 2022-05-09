contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of struct stor1;
mapping of uint256 stor2;
mapping of address stor3;
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
    if not stor3[address(arg1)]:
        return 0
    require ext_code.size(stor3[address(arg1)])
    staticcall stor3[address(arg1)].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor3[address(arg1)])
    staticcall stor3[address(arg1)].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3[address(arg1)])
    staticcall stor3[address(arg1)].token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != arg1:
        if not stor0[ext_call.return_data[12 len 20]]:
            if not stor2[address(ext_call.return_data[0])]:
                if Mask(112, 0, ext_call.return_data[32]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    return (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        else:
            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if Mask(112, 0, ext_call.return_data[32]):
                return (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        ('iszero', ('mask_shl', 112, 0, 0, ('ext_call.return_data', 32, 32)))
    else:
        if not stor0[address(ext_call.return_data[0])]:
            if not stor2[address(ext_call.return_data[0])]:
                if Mask(112, 0, ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[0]))
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    return (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        else:
            require ext_code.size(stor0[address(ext_call.return_data[0])])
            staticcall stor0[address(ext_call.return_data[0])].latestRoundData() with:
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

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)]:
        require ext_code.size(stor0[address(arg1)])
        staticcall stor0[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return (10^stor1[address(arg1)].field_0 * ext_call.return_data[32])
    if stor2[address(arg1)]:
        return stor2[address(arg1)]
    if cEtherAddress == arg1:
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
    if sub_50ed1471Address == arg1:
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(joeAddress)
        staticcall joeAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_50ed1471Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor0[stor6]:
            if not stor2[stor6]:
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if not stor2[stor6]:
                    if ext_call.return_data[0]:
                        return (0 / ext_call.return_data[0])
                else:
                    if ext_call.return_data[0] * stor2[stor6] / stor2[stor6] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0]:
                        return (ext_call.return_data[0] * stor2[stor6] / ext_call.return_data[0])
        else:
            require ext_code.size(stor0[stor6])
            staticcall stor0[stor6].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not 10^stor1[stor6].field_0 * ext_call.return_data[32]:
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / 10^stor1[stor6].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if ext_call.return_data[0]:
                    return (ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / ext_call.return_data[0])
    else:
        mem[132 len 0] = None
        staticcall arg1.mem[132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                mem[168 len 0] = None
                staticcall arg1.mem[168 len 4] with:
                        gas gas_remaining wei
                if not ext_call.success:
                    return 0
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
                if not return_data.size:
                    if not stor0[ext_call.return_data[12 len 20]]:
                        if not stor2[address(ext_call.return_data[0])]:
                            return 0
                        if not stor2[address(ext_call.return_data[0])]:
                            return 0
                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[269 len 31]
                        return (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18)
                else:
                    if not stor0[ext_call.return_data[12 len 20]]:
                        if not stor2[address(ext_call.return_data[0])]:
                            return 0
                        if not stor2[address(ext_call.return_data[0])]:
                            return 0
                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 270 len 31]
                        return (ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18)
                ('bool', ('stor', ('map', ('ext_call.return_data', 12, 20), ('name', 'stor0', 0))))
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                    return 0
                if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                return (ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18)
        else:
            if not ext_call.success:
                mem[ceil32(return_data.size) + 169 len 0] = None
                staticcall arg1.mem[ceil32(return_data.size) + 169 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        return 0
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
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 270 len 31]
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
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                    return (ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18)
                if not ext_call.success:
                    return 0, mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(arg1)
                staticcall arg1.exchangeRateStored() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x182df0f500000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.underlying() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x6f307dc300000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor0[ext_call.return_data[12 len 20]]:
                    if not stor2[address(ext_call.return_data[0])]:
                        return 0, mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not stor2[address(ext_call.return_data[0])]:
                        return 0, mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 271 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    return ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18, 
                           mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xfeaf968c00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                    return 0, mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                return ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18, 
                       mem[(2 * ceil32(return_data.size)) + 202 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        ('bool', 'ext_call.success')
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

function getPriceInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)]:
        require ext_code.size(stor0[address(arg1)])
        staticcall stor0[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 1, 10^stor1[address(arg1)].field_0 * ext_call.return_data[32]
    if stor2[address(arg1)]:
        return 1, stor2[address(arg1)]
    if cEtherAddress == arg1:
        require ext_code.size(cEtherAddress)
        staticcall cEtherAddress.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor0:
            if not stor2[0]:
                return 1, 0
            if not stor2[0]:
                return 1, 0
            if ext_call.return_data[0] * stor2[0] / stor2[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 1, ext_call.return_data[0] * stor2[0] / 10^18
        require ext_code.size(stor0)
        staticcall stor0.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not 10^stor1[0].field_0 * ext_call.return_data[32]:
            return 1, 0
        if ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^stor1[0].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        return 1, ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^18
    if sub_50ed1471Address == arg1:
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(joeAddress)
        staticcall joeAddress.0x70a08231 with:
                gas gas_remaining wei
               args sub_50ed1471Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor0[stor6]:
            if not stor2[stor6]:
                if ext_call.return_data[0]:
                    return 0, 0 / ext_call.return_data[0]
            else:
                if not stor2[stor6]:
                    if ext_call.return_data[0]:
                        return 1, 0 / ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * stor2[stor6] / stor2[stor6] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0]:
                        return 1, ext_call.return_data[0] * stor2[stor6] / ext_call.return_data[0]
        else:
            require ext_code.size(stor0[stor6])
            staticcall stor0[stor6].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not 10^stor1[stor6].field_0 * ext_call.return_data[32]:
                if ext_call.return_data[0]:
                    return 1, 0 / ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / 10^stor1[stor6].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if ext_call.return_data[0]:
                    return 1, ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / ext_call.return_data[0]
    else:
        mem[132 len 0] = None
        staticcall arg1.mem[132 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                mem[168 len 0] = None
                staticcall arg1.mem[168 len 4] with:
                        gas gas_remaining wei
                if not ext_call.success:
                    return 0
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
                if not return_data.size:
                    if not stor0[ext_call.return_data[12 len 20]]:
                        if not stor2[address(ext_call.return_data[0])]:
                            return 1, 0
                        if not stor2[address(ext_call.return_data[0])]:
                            return 1, 0
                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[269 len 31]
                        return 1, ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                else:
                    if not stor0[ext_call.return_data[12 len 20]]:
                        if not stor2[address(ext_call.return_data[0])]:
                            return 1, 0
                        if not stor2[address(ext_call.return_data[0])]:
                            return 1, 0
                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 270 len 31]
                        return 1, ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                ('bool', ('stor', ('map', ('ext_call.return_data', 12, 20), ('name', 'stor0', 0))))
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                    return 1, 0
                if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                return 1, ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
        else:
            if not ext_call.success:
                mem[ceil32(return_data.size) + 169 len 0] = None
                staticcall arg1.mem[ceil32(return_data.size) + 169 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        return 0
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
                            return 1, 0
                        if not stor2[address(ext_call.return_data[0])]:
                            return 1, 0
                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 270 len 31]
                        return 1, ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                    require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                    staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                        return 1, 0
                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                    return 1, ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                if not ext_call.success:
                    return 0, 0, mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(arg1)
                staticcall arg1.exchangeRateStored() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x182df0f500000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.underlying() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x6f307dc300000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor0[ext_call.return_data[12 len 20]]:
                    if not stor2[address(ext_call.return_data[0])]:
                        return 1, 0, mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not stor2[address(ext_call.return_data[0])]:
                        return 1, 0, mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 271 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    return 1, 
                           ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18,
                           mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xfeaf968c00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                    return 1, 0, mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                return 1, 
                       ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18,
                       mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        ('bool', 'ext_call.success')
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
                            return 1, 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0]:
                            return 1, 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
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
                        return 1, 
                               2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
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
                            return 1, 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0]:
                            return 1, 
                                   (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
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
                        return 1, 
                               (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
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
                        return 1, 
                               2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                else:
                    if ext_call.return_data[0]:
                        return 1, 
                               (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
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
                    return 1, 
                           (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function getPrices(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if stor0[address(cd[((32 * idx) + arg1 + 36)])]:
                require ext_code.size(stor0[address(cd[((32 * idx) + arg1 + 36)])])
                staticcall stor0[address(cd[((32 * idx) + arg1 + 36)])].latestRoundData() with:
                        gas gas_remaining wei
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 1
                require idx < mem[96]
                mem[(32 * idx) + 128] = 10^stor1[address(cd[((32 * idx) + arg1 + 36)])].field_0 * ext_call.return_data[32]
            else:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
                else:
                    if cEtherAddress == address(cd[((32 * idx) + arg1 + 36)]):
                        require ext_code.size(cEtherAddress)
                        staticcall cEtherAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor0:
                            mem[0] = 0
                            mem[32] = 2
                            if not stor2[0]:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                if not stor2[0]:
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    if ext_call.return_data[0] * stor2[0] / stor2[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[0] / 10^18
                        else:
                            require ext_code.size(stor0)
                            staticcall stor0.latestRoundData() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[0] = 0
                            mem[32] = 1
                            if not 10^stor1[0].field_0 * ext_call.return_data[32]:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                if ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^stor1[0].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^18
                    else:
                        if sub_50ed1471Address == address(cd[((32 * idx) + arg1 + 36)]):
                            require ext_code.size(sub_50ed1471Address)
                            staticcall sub_50ed1471Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = sub_50ed1471Address
                            require ext_code.size(joeAddress)
                            staticcall joeAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_50ed1471Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not stor0[stor6]:
                                mem[0] = joeAddress
                                mem[32] = 2
                                if not stor2[stor6]:
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                else:
                                    if not stor2[stor6]:
                                        require ext_call.return_data[0]
                                        require idx < mem[96]
                                        mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * stor2[stor6] / stor2[stor6] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        require ext_call.return_data[0]
                                        require idx < mem[96]
                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[stor6] / ext_call.return_data[0]
                            else:
                                require ext_code.size(stor0[stor6])
                                staticcall stor0[stor6].latestRoundData() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 160
                                mem[0] = joeAddress
                                mem[32] = 1
                                if not 10^stor1[stor6].field_0 * ext_call.return_data[32]:
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / 10^stor1[stor6].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / ext_call.return_data[0]
                        else:
                            _772 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_772 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_772 + 36 len 28]
                            t = _772 + 32
                            u = _772 + 36
                            s = mem[_772]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_772 + floor32(mem[_772]) + 36] = mem[_772 + -(mem[_772] % 32) + floor32(mem[_772]) + 64 len mem[_772] % 32] or Mask(8 * -(mem[_772] % 32) + 32, -(8 * -(mem[_772] % 32) + 32) + 256, mem[_772 + floor32(mem[_772]) + 36])
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_772 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_772 + 40 len mem[_772] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    mem[_772 + 36] = 4
                                    mem[64] = _772 + 72
                                    mem[_772 + 68] = 0x182df0f500000000000000000000000000000000000000000000000000000000 or mem[_772 + 72 len 28]
                                    t = _772 + 68
                                    u = _772 + 72
                                    s = 4
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_772 + 72] = mem[_772 + 96 len 4] or Mask(224, 32, mem[_772 + 72])
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_772 + 72 len 4] with:
                                            gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_772 + 72] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_772 + 173 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + 72 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                    else:
                                        mem[64] = _772 + ceil32(return_data.size) + 73
                                        mem[_772 + 72] = return_data.size
                                        mem[_772 + 104 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_772 + ceil32(return_data.size) + 73] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_772 + ceil32(return_data.size) + 174 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 73 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                else:
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_772 + 36 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                                            gas gas_remaining wei
                                    mem[_772 + 36] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[32] = 0
                                    if not stor0[ext_call.return_data[12 len 20]]:
                                        mem[32] = 2
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_772 + 36] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor2[address(ext_call.return_data[0])]:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        else:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                        staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                gas gas_remaining wei
                                        mem[_772 + 36 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 160
                                        mem[32] = 1
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_772 + 36] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor0[ext_call.return_data[12 len 20]]:
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 2
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_772 + 36] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            if not stor2[address(ext_call.return_data[0])]:
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            else:
                                                mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                    gas gas_remaining wei
                                            mem[_772 + 36 len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 160
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 1
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_772 + 36] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                            else:
                                mem[64] = _772 + ceil32(return_data.size) + 37
                                mem[_772 + 36] = return_data.size
                                mem[_772 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    mem[_772 + ceil32(return_data.size) + 37] = 4
                                    mem[64] = _772 + ceil32(return_data.size) + 73
                                    mem[_772 + ceil32(return_data.size) + 69] = 0x182df0f500000000000000000000000000000000000000000000000000000000 or mem[_772 + ceil32(return_data.size) + 73 len 28]
                                    t = _772 + ceil32(return_data.size) + 69
                                    u = _772 + ceil32(return_data.size) + 73
                                    s = 4
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_772 + ceil32(return_data.size) + 73] = mem[_772 + ceil32(return_data.size) + 97 len 4] or Mask(224, 32, mem[_772 + ceil32(return_data.size) + 73])
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_772 + ceil32(return_data.size) + 73 len 4] with:
                                            gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_772 + ceil32(return_data.size) + 73] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_772 + ceil32(return_data.size) + 174 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 73 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                    else:
                                        mem[64] = _772 + (2 * ceil32(return_data.size)) + 74
                                        mem[_772 + ceil32(return_data.size) + 73] = return_data.size
                                        mem[_772 + ceil32(return_data.size) + 105 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x182df0f500000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x6f307dc300000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            mem[_772 + (2 * ceil32(return_data.size)) + 74] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_772 + (2 * ceil32(return_data.size)) + 175 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xfeaf968c00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                mem[_772 + (2 * ceil32(return_data.size)) + 74 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    ext_call.return_data[101 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                else:
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_772 + ceil32(return_data.size) + 37 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                                            gas gas_remaining wei
                                    mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[32] = 0
                                    if not stor0[ext_call.return_data[12 len 20]]:
                                        mem[32] = 2
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor2[address(ext_call.return_data[0])]:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        else:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                        staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                gas gas_remaining wei
                                        mem[_772 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 160
                                        mem[32] = 1
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor0[ext_call.return_data[12 len 20]]:
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 2
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            if not stor2[address(ext_call.return_data[0])]:
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            else:
                                                mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                    gas gas_remaining wei
                                            mem[_772 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 160
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 1
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_772 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if stor0[address(cd[((32 * idx) + arg1 + 36)])]:
                require ext_code.size(stor0[address(cd[((32 * idx) + arg1 + 36)])])
                staticcall stor0[address(cd[((32 * idx) + arg1 + 36)])].latestRoundData() with:
                        gas gas_remaining wei
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 1
                require idx < mem[96]
                mem[(32 * idx) + 128] = 10^stor1[address(cd[((32 * idx) + arg1 + 36)])].field_0 * ext_call.return_data[32]
            else:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
                else:
                    if cEtherAddress == address(cd[((32 * idx) + arg1 + 36)]):
                        require ext_code.size(cEtherAddress)
                        staticcall cEtherAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor0:
                            mem[0] = 0
                            mem[32] = 2
                            if not stor2[0]:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                if not stor2[0]:
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0
                                else:
                                    if ext_call.return_data[0] * stor2[0] / stor2[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[0] / 10^18
                        else:
                            require ext_code.size(stor0)
                            staticcall stor0.latestRoundData() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[0] = 0
                            mem[32] = 1
                            if not 10^stor1[0].field_0 * ext_call.return_data[32]:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = 0
                            else:
                                if ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^stor1[0].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[0].field_0 * ext_call.return_data[32] / 10^18
                    else:
                        if sub_50ed1471Address == address(cd[((32 * idx) + arg1 + 36)]):
                            require ext_code.size(sub_50ed1471Address)
                            staticcall sub_50ed1471Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = sub_50ed1471Address
                            require ext_code.size(joeAddress)
                            staticcall joeAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_50ed1471Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not stor0[stor6]:
                                mem[0] = joeAddress
                                mem[32] = 2
                                if not stor2[stor6]:
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                else:
                                    if not stor2[stor6]:
                                        require ext_call.return_data[0]
                                        require idx < mem[96]
                                        mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * stor2[stor6] / stor2[stor6] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        require ext_call.return_data[0]
                                        require idx < mem[96]
                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[stor6] / ext_call.return_data[0]
                            else:
                                require ext_code.size(stor0[stor6])
                                staticcall stor0[stor6].latestRoundData() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 160
                                mem[0] = joeAddress
                                mem[32] = 1
                                if not 10^stor1[stor6].field_0 * ext_call.return_data[32]:
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / 10^stor1[stor6].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                    require ext_call.return_data[0]
                                    require idx < mem[96]
                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[stor6].field_0 * ext_call.return_data[32] / ext_call.return_data[0]
                        else:
                            _780 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_780 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_780 + 36 len 28]
                            t = _780 + 32
                            u = _780 + 36
                            s = mem[_780]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_780 + floor32(mem[_780]) + 36] = mem[_780 + -(mem[_780] % 32) + floor32(mem[_780]) + 64 len mem[_780] % 32] or Mask(8 * -(mem[_780] % 32) + 32, -(8 * -(mem[_780] % 32) + 32) + 256, mem[_780 + floor32(mem[_780]) + 36])
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_780 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_780 + 40 len mem[_780] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    mem[_780 + 36] = 4
                                    mem[64] = _780 + 72
                                    mem[_780 + 68] = 0x182df0f500000000000000000000000000000000000000000000000000000000 or mem[_780 + 72 len 28]
                                    t = _780 + 68
                                    u = _780 + 72
                                    s = 4
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_780 + 72] = mem[_780 + 96 len 4] or Mask(224, 32, mem[_780 + 72])
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_780 + 72 len 4] with:
                                            gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_780 + 72] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_780 + 173 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + 72 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                    else:
                                        mem[64] = _780 + ceil32(return_data.size) + 73
                                        mem[_780 + 72] = return_data.size
                                        mem[_780 + 104 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_780 + ceil32(return_data.size) + 73] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_780 + ceil32(return_data.size) + 174 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 73 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                else:
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_780 + 36 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                                            gas gas_remaining wei
                                    mem[_780 + 36] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[32] = 0
                                    if not stor0[ext_call.return_data[12 len 20]]:
                                        mem[32] = 2
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_780 + 36] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor2[address(ext_call.return_data[0])]:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        else:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + 36] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                        staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                gas gas_remaining wei
                                        mem[_780 + 36 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 160
                                        mem[32] = 1
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_780 + 36] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor0[ext_call.return_data[12 len 20]]:
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 2
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_780 + 36] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            if not stor2[address(ext_call.return_data[0])]:
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            else:
                                                mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                    gas gas_remaining wei
                                            mem[_780 + 36 len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 160
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 1
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_780 + 36] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                            else:
                                mem[64] = _780 + ceil32(return_data.size) + 37
                                mem[_780 + 36] = return_data.size
                                mem[_780 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    mem[_780 + ceil32(return_data.size) + 37] = 4
                                    mem[64] = _780 + ceil32(return_data.size) + 73
                                    mem[_780 + ceil32(return_data.size) + 69] = 0x182df0f500000000000000000000000000000000000000000000000000000000 or mem[_780 + ceil32(return_data.size) + 73 len 28]
                                    t = _780 + ceil32(return_data.size) + 69
                                    u = _780 + ceil32(return_data.size) + 73
                                    s = 4
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_780 + ceil32(return_data.size) + 73] = mem[_780 + ceil32(return_data.size) + 97 len 4] or Mask(224, 32, mem[_780 + ceil32(return_data.size) + 73])
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[_780 + ceil32(return_data.size) + 73 len 4] with:
                                            gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                            mem[_780 + ceil32(return_data.size) + 73] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_780 + ceil32(return_data.size) + 174 len 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 73 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                    else:
                                        mem[64] = _780 + (2 * ceil32(return_data.size)) + 74
                                        mem[_780 + ceil32(return_data.size) + 73] = return_data.size
                                        mem[_780 + ceil32(return_data.size) + 105 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = 0
                                        else:
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).exchangeRateStored() with:
                                                    gas gas_remaining wei
                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x182df0f500000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                                                    gas gas_remaining wei
                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x6f307dc300000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                            mem[_780 + (2 * ceil32(return_data.size)) + 74] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if not stor2[address(ext_call.return_data[0])]:
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = 0
                                                    else:
                                                        if ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / stor2[address(ext_call.return_data[0])] != ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[_780 + (2 * ceil32(return_data.size)) + 175 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        require idx < mem[96]
                                                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[address(ext_call.return_data[0])] / 10^18
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xfeaf968c00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                mem[_780 + (2 * ceil32(return_data.size)) + 74 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                if not 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32]:
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = 0
                                                else:
                                                    if ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    ext_call.return_data[101 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    require idx < mem[96]
                                                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] / 10^18
                                else:
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                    mem[_780 + ceil32(return_data.size) + 37 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                                            gas gas_remaining wei
                                    mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[32] = 0
                                    if not stor0[ext_call.return_data[12 len 20]]:
                                        mem[32] = 2
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor2[address(ext_call.return_data[0])]:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                                        else:
                                            if not stor0[ext_call.return_data[12 len 20]]:
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 2
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                if not stor2[address(ext_call.return_data[0])]:
                                                    mem[(32 * idx) + 128] = 2 * stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                                else:
                                                    mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                                staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 160
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = 1
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                require idx < mem[96]
                                                mem[(32 * idx) + 128] = (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                        staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                gas gas_remaining wei
                                        mem[_780 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 160
                                        mem[32] = 1
                                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                                                gas gas_remaining wei
                                        mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[32] = 0
                                        if not stor0[ext_call.return_data[12 len 20]]:
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 2
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            if not stor2[address(ext_call.return_data[0])]:
                                                mem[(32 * idx) + 128] = 2 * 10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]
                                            else:
                                                mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (stor2[address(ext_call.return_data[0])] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(stor0[ext_call.return_data[12 len 20]])
                                            staticcall stor0[ext_call.return_data[12 len 20]].latestRoundData() with:
                                                    gas gas_remaining wei
                                            mem[_780 + ceil32(return_data.size) + 37 len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 160
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = 1
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[_780 + ceil32(return_data.size) + 37] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require idx < mem[96]
                                            mem[(32 * idx) + 128] = (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0])) + (10^stor1[address(ext_call.return_data[0])].field_0 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
