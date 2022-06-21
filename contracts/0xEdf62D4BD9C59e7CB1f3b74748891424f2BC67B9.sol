contract main {




// =====================  Runtime code  =====================


#
#  - sub_0dec8aa2(?)
#  - getPrice(address arg1)
#  - sub_4d65231a(?)
#  - getPriceInfo(address arg1)
#  - getPrices(address[] arg1)
#
const sub_19cab6a5(?) = 0x1337bedc9d22ecbe766df105c9623922a27963ec

const sub_209f315b(?) = 0x1dab6560494b04473a0be3e7d83cf3fdf3a51828

const sub_6fac53ee(?) = 0x445fe580ef8d70ff569ab36e80c647af338db351

const sub_a0d23249(?) = 0x5b5cfe992adac0c9d48e05854b2d91c73a003858


mapping of address stor0;
mapping of struct stor1;
mapping of uint256 stor2;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
uint128 storEE9B; offset 160
address storEE9B;

function getMultiSignatureAddress() payable {
    return multiSignatureAddress
}

function owner() payable {
    return owner
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
    staticcall stor0[arg1].0xfeaf968c with:
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



}
