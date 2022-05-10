contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of struct stor1;
mapping of uint256 stor2;
address joeAddress;
address sub_50ed1471Address;
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

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_50ed1471Address != arg1:
        if not stor0[address(arg1)]:
            if not stor2[address(arg1)]:
                return 0
            return stor2[address(arg1)]
        require ext_code.size(stor0[address(arg1)])
        staticcall stor0[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return (10^stor1[address(arg1)].field_0 * ext_call.return_data[32])
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
    if not stor0[stor3]:
        if not stor2[stor3]:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if not stor2[stor3]:
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] * stor2[stor3] / stor2[stor3] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0]:
                    return (ext_call.return_data[0] * stor2[stor3] / ext_call.return_data[0])
    else:
        require ext_code.size(stor0[stor3])
        staticcall stor0[stor3].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not 10^stor1[stor3].field_0 * ext_call.return_data[32]:
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / 10^stor1[stor3].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function getPriceInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_50ed1471Address != arg1:
        if not stor0[address(arg1)]:
            if not stor2[address(arg1)]:
                return 0
            return 1, stor2[address(arg1)]
        require ext_code.size(stor0[address(arg1)])
        staticcall stor0[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return 1, 10^stor1[address(arg1)].field_0 * ext_call.return_data[32]
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
    if not stor0[stor3]:
        if not stor2[stor3]:
            if ext_call.return_data[0]:
                return 0, 0 / ext_call.return_data[0]
        else:
            if not stor2[stor3]:
                if ext_call.return_data[0]:
                    return 1, 0 / ext_call.return_data[0]
            else:
                if ext_call.return_data[0] * stor2[stor3] / stor2[stor3] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0]:
                    return 1, ext_call.return_data[0] * stor2[stor3] / ext_call.return_data[0]
    else:
        require ext_code.size(stor0[stor3])
        staticcall stor0[stor3].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not 10^stor1[stor3].field_0 * ext_call.return_data[32]:
            if ext_call.return_data[0]:
                return 1, 0 / ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / 10^stor1[stor3].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if ext_call.return_data[0]:
                return 1, ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / ext_call.return_data[0]
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function getPrices(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if sub_50ed1471Address != address(cd[((32 * idx) + arg1 + 36)]):
            if not stor0[address(cd[((32 * idx) + arg1 + 36)])]:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                require idx < arg1.length
                if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
                    mem[(32 * idx) + 128] = 0
                else:
                    mem[(32 * idx) + 128] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
            else:
                require ext_code.size(stor0[address(cd[((32 * idx) + arg1 + 36)])])
                staticcall stor0[address(cd[((32 * idx) + arg1 + 36)])].latestRoundData() with:
                        gas gas_remaining wei
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 1
                require idx < arg1.length
                mem[(32 * idx) + 128] = 10^stor1[address(cd[((32 * idx) + arg1 + 36)])].field_0 * ext_call.return_data[32]
        else:
            require ext_code.size(sub_50ed1471Address)
            staticcall sub_50ed1471Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = sub_50ed1471Address
            require ext_code.size(joeAddress)
            staticcall joeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_50ed1471Address
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor0[stor3]:
                mem[0] = joeAddress
                mem[32] = 2
                if not stor2[stor3]:
                    require ext_call.return_data[0]
                    require idx < arg1.length
                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                else:
                    if not stor2[stor3]:
                        require ext_call.return_data[0]
                        require idx < arg1.length
                        mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * stor2[stor3] / stor2[stor3] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                        require ext_call.return_data[0]
                        require idx < arg1.length
                        mem[(32 * idx) + 128] = ext_call.return_data[0] * stor2[stor3] / ext_call.return_data[0]
            else:
                require ext_code.size(stor0[stor3])
                staticcall stor0[stor3].latestRoundData() with:
                        gas gas_remaining wei
                mem[(32 * arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                mem[0] = joeAddress
                mem[32] = 1
                if not 10^stor1[stor3].field_0 * ext_call.return_data[32]:
                    require ext_call.return_data[0]
                    require idx < arg1.length
                    mem[(32 * idx) + 128] = 0 / ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / 10^stor1[stor3].field_0 * ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                    require ext_call.return_data[0]
                    require idx < arg1.length
                    mem[(32 * idx) + 128] = ext_call.return_data[0] * 10^stor1[stor3].field_0 * ext_call.return_data[32] / ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}



}
