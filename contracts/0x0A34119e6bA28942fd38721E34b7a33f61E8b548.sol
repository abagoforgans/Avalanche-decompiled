contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2, address arg3)
#
const sub_f6a23320(?) = 500

const MAX_FEE = 2000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_ff4de86fAddress;
address sub_6af66772Address;
address sub_131edc46Address;
address sub_dee91fcbAddress;
address sub_ed9a5540Address;
address sub_a296454fAddress;
address sub_8525a65aAddress;
uint256 sub_64a4f078;
uint256 totalFee;
array of struct sub_2c7b09cb;
mapping of struct pools;
mapping of address sub_1631b194;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332202;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332203;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332204;
array of struct stor69290179047559764897525587595065000388900846244344453231461793201804346332205;

function getPoolInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pools[address(arg1)].field_0, 
           bool(pools[address(arg1)].field_256),
           pools[address(arg1)].field_256,
           pools[address(arg1)].field_512,
           pools[address(arg1)].field_768,
           pools[address(arg1)].field_1280,
           pools[address(arg1)].field_1024,
           pools[address(arg1)].field_1536,
           pools[address(arg1)].field_1792
}

function sub_131edc46(?) payable {
    return sub_131edc46Address
}

function sub_1631b194(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1631b194[arg1]
}

function totalFee() payable {
    return totalFee
}

function sub_2c7b09cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2c7b09cb.length
    return sub_2c7b09cb[arg1].field_0, 
           sub_2c7b09cb[arg1].field_256,
           sub_2c7b09cb[arg1].field_512,
           sub_2c7b09cb[arg1].field_768,
           bool(sub_2c7b09cb[arg1].field_928),
           bool(sub_2c7b09cb[arg1].field_936),
           bool(sub_2c7b09cb[arg1].field_944)
}

function sub_64a4f078(?) payable {
    return sub_64a4f078
}

function sub_6af66772(?) payable {
    return sub_6af66772Address
}

function sub_8525a65a(?) payable {
    return sub_8525a65aAddress
}

function owner() payable {
    return owner
}

function sub_a296454f(?) payable {
    return sub_a296454fAddress
}

function pools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pools[arg1].field_0, 
           bool(pools[arg1].field_256),
           pools[arg1].field_256,
           pools[arg1].field_512,
           pools[arg1].field_768,
           pools[arg1].field_1024,
           pools[arg1].field_1280,
           pools[arg1].field_1536,
           pools[arg1].field_1792
}

function sub_dee91fcb(?) payable {
    return sub_dee91fcbAddress
}

function sub_ed9a5540(?) payable {
    return sub_ed9a5540Address
}

function sub_ff4de86f(?) payable {
    return sub_ff4de86fAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMasterChief(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_a296454fAddress = arg1
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_256 = 0
}

function sub_20e68b3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ed9a5540Address = address(arg1)
}

function sub_66b5f795(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_8525a65aAddress = address(arg1)
}

function sub_a2212459(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_1792 = address(arg2)
}

function sub_c9b0162b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_1536 = address(arg2)
}

function sub_6c1a3085(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_131edc46Address:
        revert with 0, 'xPTP already set'
    sub_131edc46Address = address(arg1)
}

function sub_1439069a(?) payable {
    require ext_code.size(sub_ff4de86fAddress)
    staticcall sub_ff4de86fAddress.0x9bc8bf75 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_746c5a9f(?) payable {
    require ext_code.size(sub_ff4de86fAddress)
    staticcall sub_ff4de86fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function removeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= sub_2c7b09cb.length:
        revert with 0, 50
    if totalFee < sub_2c7b09cb[arg1].field_512:
        revert with 0, 17
    totalFee -= sub_2c7b09cb[arg1].field_512
    sub_2c7b09cb[arg1].field_944 = 0
    emit 0x5493db17: sub_2c7b09cb[arg1].field_768
}

function setCallerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 500:
        revert with 0, 'Value too high'
    if totalFee > !arg1:
        revert with 0, 17
    if totalFee + arg1 < sub_64a4f078:
        revert with 0, 17
    totalFee = totalFee + arg1 - sub_64a4f078
    if 2000 < totalFee + arg1 - sub_64a4f078:
        revert with 0, 'MAX Fee reached'
    sub_64a4f078 = arg1
}

function sub_a7187122(?) payable {
    require ext_code.size(sub_ff4de86fAddress)
    staticcall sub_ff4de86fAddress.0x9bc8bf75 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_ff4de86fAddress)
        call sub_ff4de86fAddress.claim() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf56ca5be: ext_call.return_data[0]
}

function sub_f25fc6d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(sub_ed9a5540Address)
    call sub_ed9a5540Address.migrate(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39d4d8b1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(pools[address(arg2)].field_1280)
    staticcall pools[address(arg2)].field_1280.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and pools[address(arg2)].field_768 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0] * pools[address(arg2)].field_768:
        return 0
    if arg1 and pools[address(arg2)].field_768 > -1 / arg1:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (arg1 * pools[address(arg2)].field_768 / ext_call.return_data[0])
}

function sub_f0806088(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(pools[address(arg2)].field_1280)
    staticcall pools[address(arg2)].field_1280.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and pools[address(arg2)].field_1024 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0] * pools[address(arg2)].field_1024:
        return 0
    if arg1 and pools[address(arg2)].field_1024 > -1 / arg1:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (arg1 * pools[address(arg2)].field_1024 / ext_call.return_data[0])
}

function sub_99cec548(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(pools[address(arg2)].field_1280)
    staticcall pools[address(arg2)].field_1280.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and pools[address(arg2)].field_1024 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0] * pools[address(arg2)].field_1024:
        return arg1
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if not pools[address(arg2)].field_1024:
        revert with 0, 18
    return (arg1 * ext_call.return_data[0] / pools[address(arg2)].field_1024)
}

function setFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= sub_2c7b09cb.length:
        revert with 0, 50
    if not sub_2c7b09cb[arg1].field_944:
        revert with 0, 'Cannot change an deactivated fee'
    if sub_2c7b09cb[arg1].field_256 > arg2:
        revert with 0, 'Value not in range'
    if arg2 > sub_2c7b09cb[arg1].field_0:
        revert with 0, 'Value not in range'
    if totalFee > !arg2:
        revert with 0, 17
    if totalFee + arg2 < sub_2c7b09cb[arg1].field_512:
        revert with 0, 17
    if totalFee + arg2 - sub_2c7b09cb[arg1].field_512 > 2000:
        revert with 0, 'Max fee reached'
    if totalFee < sub_2c7b09cb[arg1].field_512:
        revert with 0, 17
    if totalFee - sub_2c7b09cb[arg1].field_512 > !arg2:
        revert with 0, 17
    totalFee = totalFee - sub_2c7b09cb[arg1].field_512 + arg2
    sub_2c7b09cb[arg1].field_512 = arg2
    emit SetFee(sub_2c7b09cb[arg1].field_768, arg2);
}

function sub_11c34f91(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_ff4de86fAddress = address(arg2)
    sub_6af66772Address = address(arg1)
    sub_dee91fcbAddress = address(arg3)
    sub_ed9a5540Address = address(arg4)
    sub_a296454fAddress = address(arg5)
    sub_64a4f078 = arg6
    totalFee = arg6
}

function sub_7ca20928(?) payable {
    require calldata.size - 4 >= 192
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalFee > !arg3:
        revert with 0, 17
    if totalFee + arg3 > 2000:
        revert with 0, 'Max fee reached'
    if arg2 > arg3:
        revert with 0, 'Value not in range'
    if arg3 > arg1:
        revert with 0, 'Value not in range'
    sub_2c7b09cb.length++
    stor9930[stor110.length] = arg1
    stor9930[stor110.length] = arg2
    stor9930[stor110.length] = arg3
    stor9930[stor110.length].field_0 = address(arg4)
    stor9930[stor110.length].field_160 = uint8(bool(arg5))
    stor9930[stor110.length].field_168 = uint8(bool(arg6))
    stor9930[stor110.length].field_176 = 1
    stor9930[stor110.length].field_184 = Mask(72, 24, bool(arg5)) >> 24
    stor9930[stor110.length].field_184 = Mask(72, 16, bool(arg6)) >> 16
    if totalFee > !arg3:
        revert with 0, 17
    totalFee += arg3
    emit 0x6b67376f: address(arg4), arg3, bool(arg5), bool(arg6)
}

function sub_0793613c(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_ff4de86fAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_ff4de86fAddress)
        call sub_ff4de86fAddress.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ff4de86fAddress)
    staticcall sub_ff4de86fAddress.0x9bc8bf75 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_ff4de86fAddress)
        call sub_ff4de86fAddress.claim() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf56ca5be: ext_call.return_data[0]
    emit 0x6a6f399b: arg1
}

function sub_97ead276(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_6af66772Address == address(arg1):
        revert with 0, 'not authorized'
    if pools[address(arg1)].field_256:
        revert with 0, 'Not authorized'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).0x8fcf4822 with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_92b3f301(?) payable {
    require ext_code.size(sub_6af66772Address)
    staticcall sub_6af66772Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_ff4de86fAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_ff4de86fAddress)
        call sub_ff4de86fAddress.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ff4de86fAddress)
    staticcall sub_ff4de86fAddress.0x9bc8bf75 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_ff4de86fAddress)
        call sub_ff4de86fAddress.claim() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf56ca5be: ext_call.return_data[0]
    emit 0x6a6f399b: ext_call.return_data[0]
}

function sub_3ac856e8(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 98 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if pools[address(arg2)].field_256:
        revert with 0, 'Pool is already registered or active'
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(0x656c6b54188462682a876cfba2d531c57985c9fe)
        delegate 0x656c6b54188462682a876cfba2d531c57985c9fe.0x8f00c962 with:
             gas gas_remaining wei
            args Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, 64) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256) << (8 * ceil32(arg5.length)) - 256), ceil32(arg4.length) + 96
    else:
        mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 198] = arg5.length
        mem[ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 230 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256, 64) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 27) + 256
        if ceil32(arg5.length) > arg5.length:
            mem[arg5.length + ceil32(arg4.length) + ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 230] = 0
        require ext_code.size(0x656c6b54188462682a876cfba2d531c57985c9fe)
        delegate 0x656c6b54188462682a876cfba2d531c57985c9fe.0x8f00c962 with:
             gas gas_remaining wei
            args Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256, Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + arg4.length + 230 len ceil32(arg5.length) - arg4.length + ceil32(arg4.length)]), ceil32(arg4.length) + 96
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(sub_a296454fAddress)
    call sub_a296454fAddress.0x3b3f0ee6 with:
         gas gas_remaining wei
        args address(delegate.return_data[0]), sub_6af66772Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xb976b857e188f9e2fad07c8f377e932d45755342)
    delegate 0xb976b857e188f9e2fad07c8f377e932d45755342.0x746d19f6 with:
         gas gas_remaining wei
        args arg1, address(delegate.return_data[0]), address(arg2), this.address, sub_a296454fAddress, address(ext_call.return_data[0]), sub_131edc46Address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(sub_a296454fAddress)
    call sub_a296454fAddress.0x266f24b7 with:
         gas gas_remaining wei
        args arg6, address(delegate.return_data[0]), address(ext_call.return_data[0]), address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    pools[address(arg2)].field_0 = arg1
    pools[address(arg2)].field_256 = 1
    pools[address(arg2)].field_264 = address(arg2)
    pools[address(arg2)].field_512 = address(arg3)
    pools[address(arg2)].field_768 = 0
    pools[address(arg2)].field_1024 = 0
    pools[address(arg2)].field_1280 = address(delegate.return_data[0])
    pools[address(arg2)].field_1536 = address(ext_call.return_data[0])
    pools[address(arg2)].field_1792 = address(delegate.return_data[0])
    emit PoolAdded(address(arg2));
}

function sub_16762eed(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if pools[address(arg1)].field_1792 != msg.sender:
        revert with 0, 'Only helper can withdraw'
    require ext_code.size(pools[address(arg1)].field_1280)
    staticcall pools[address(arg1)].field_1280.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and pools[address(arg1)].field_1024 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0] * pools[address(arg1)].field_1024:
        require ext_code.size(pools[address(arg1)].field_1280)
        staticcall pools[address(arg1)].field_1280.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and pools[address(arg1)].field_768 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0] * pools[address(arg1)].field_768:
            require ext_code.size(pools[address(arg1)].field_1280)
            call pools[address(arg1)].field_1280.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = sub_dee91fcbAddress
            mem[(2 * ceil32(return_data.size)) + 132] = 0
            require ext_code.size(pools[address(arg1)].field_512)
            call pools[address(arg1)].field_512.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_dee91fcbAddress, 0
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = 0
            require ext_code.size(sub_ed9a5540Address)
            call sub_ed9a5540Address.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = arg3
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(sub_dee91fcbAddress)
            call sub_dee91fcbAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg1), 0, arg3, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if pools[address(arg1)].field_1024 < arg2:
                revert with 0, 17
            pools[address(arg1)].field_1024 -= arg2
            if pools[address(arg1)].field_768 < 0:
                revert with 0, 17
        else:
            if arg2 and pools[address(arg1)].field_768 > -1 / arg2:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(pools[address(arg1)].field_1280)
            call pools[address(arg1)].field_1280.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = sub_dee91fcbAddress
            mem[(2 * ceil32(return_data.size)) + 132] = arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            require ext_code.size(pools[address(arg1)].field_512)
            call pools[address(arg1)].field_512.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_dee91fcbAddress, arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            require ext_code.size(sub_ed9a5540Address)
            call sub_ed9a5540Address.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_0, arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 164] = arg3
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(sub_dee91fcbAddress)
            call sub_dee91fcbAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg1), arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0], arg3, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if pools[address(arg1)].field_1024 < arg2:
                revert with 0, 17
            pools[address(arg1)].field_1024 -= arg2
            if pools[address(arg1)].field_768 < arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]:
                revert with 0, 17
            pools[address(arg1)].field_768 -= arg2 * pools[address(arg1)].field_768 / ext_call.return_data[0]
    else:
        if arg2 and ext_call.return_data[0] > -1 / arg2:
            revert with 0, 17
        if not pools[address(arg1)].field_1024:
            revert with 0, 18
        require ext_code.size(pools[address(arg1)].field_1280)
        staticcall pools[address(arg1)].field_1280.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and pools[address(arg1)].field_768 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0] * pools[address(arg1)].field_768:
            require ext_code.size(pools[address(arg1)].field_1280)
            call pools[address(arg1)].field_1280.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = sub_dee91fcbAddress
            mem[(2 * ceil32(return_data.size)) + 132] = 0
            require ext_code.size(pools[address(arg1)].field_512)
            call pools[address(arg1)].field_512.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_dee91fcbAddress, 0
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = 0
            require ext_code.size(sub_ed9a5540Address)
            call sub_ed9a5540Address.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = 0
            mem[(6 * ceil32(return_data.size)) + 164] = arg3
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(sub_dee91fcbAddress)
            call sub_dee91fcbAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg1), 0, arg3, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if pools[address(arg1)].field_1024 < arg2:
                revert with 0, 17
            pools[address(arg1)].field_1024 -= arg2
            if pools[address(arg1)].field_768 < 0:
                revert with 0, 17
        else:
            if arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 and pools[address(arg1)].field_768 > -1 / arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(pools[address(arg1)].field_1280)
            call pools[address(arg1)].field_1280.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = sub_dee91fcbAddress
            mem[(2 * ceil32(return_data.size)) + 132] = arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            require ext_code.size(pools[address(arg1)].field_512)
            call pools[address(arg1)].field_512.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_dee91fcbAddress, arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            require ext_code.size(sub_ed9a5540Address)
            call sub_ed9a5540Address.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_0, arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 164] = arg3
            mem[(6 * ceil32(return_data.size)) + 196] = this.address
            mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp
            require ext_code.size(sub_dee91fcbAddress)
            call sub_dee91fcbAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg1), arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0], arg3, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if pools[address(arg1)].field_1024 < arg2:
                revert with 0, 17
            pools[address(arg1)].field_1024 -= arg2
            if pools[address(arg1)].field_768 < arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]:
                revert with 0, 17
            pools[address(arg1)].field_768 -= arg2 * ext_call.return_data[0] / pools[address(arg1)].field_1024 * pools[address(arg1)].field_768 / ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(7 * ceil32(return_data.size)) + 132] = address(arg4)
    mem[(7 * ceil32(return_data.size)) + 164] = 0
    mem[(7 * ceil32(return_data.size)) + 96] = 68
    mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg4) << 64
    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(7 * ceil32(return_data.size)) + 196] = 32
    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, 0, 0
    mem[(7 * ceil32(return_data.size)) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg4) << 64, 0, 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg4) << 64, 0, 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
            if not mem[(7 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit NewWithdraw(arg2, address(arg4), address(arg1));
}

function harvest(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    mem[32] = 111
    if not pools[address(arg1)].field_256:
        revert with 0, 'Pool not active'
    mem[100] = this.address
    require ext_code.size(sub_6af66772Address)
    staticcall sub_6af66772Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(sub_ed9a5540Address)
    call sub_ed9a5540Address.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pools[address(arg1)].field_0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_6af66772Address)
    staticcall sub_6af66772Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if not arg2:
        idx = 0
        s = mem[ceil32(return_data.size) + 96] - ext_call.return_data[0]
        while idx < sub_2c7b09cb.length:
            mem[0] = 110
            if not sub_2c7b09cb[idx].field_944:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 0 and sub_2c7b09cb[idx].field_512 > -1 / 0:
                revert with 0, 17
            if sub_2c7b09cb[idx].field_928:
                mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                require ext_code.size(sub_6af66772Address)
                if sub_2c7b09cb[idx].field_936:
                    call sub_6af66772Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_804] == bool(mem[_804])
                    mem[mem[64]] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 32] = sub_6af66772Address
                    mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                else:
                    call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _805 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_805] == bool(mem[_805])
                    mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64] + 36] = sub_6af66772Address
                    require ext_code.size(sub_2c7b09cb[idx].field_768)
                    call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_6af66772Address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_844] == bool(mem[_844])
                    if sub_8525a65aAddress:
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _913 = mem[_888]
                        require mem[_888] == mem[_888 + 12 len 20]
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1001 = mem[_982]
                        mem[mem[64] + 68] = sub_6af66772Address
                        mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 132] = _1001
                        require ext_code.size(sub_8525a65aAddress)
                        call sub_8525a65aAddress.0xd2472b1b with:
                             gas gas_remaining wei
                            args pools[address(arg1)].field_256, address(_913), sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _1001
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = sub_6af66772Address
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
            else:
                mem[mem[64] + 4] = sub_131edc46Address
                mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_802] == bool(mem[_802])
                require ext_code.size(sub_131edc46Address)
                call sub_131edc46Address.deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                require ext_code.size(sub_131edc46Address)
                if sub_2c7b09cb[idx].field_936:
                    call sub_131edc46Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _869 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_869] == bool(mem[_869])
                    mem[mem[64]] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 32] = sub_131edc46Address
                    mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                else:
                    call sub_131edc46Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_870] == bool(mem[_870])
                    mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64] + 36] = sub_131edc46Address
                    require ext_code.size(sub_2c7b09cb[idx].field_768)
                    call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_131edc46Address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_914] == bool(mem[_914])
                    if sub_8525a65aAddress:
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1087 = mem[_1044]
                        require mem[_1044] == mem[_1044 + 12 len 20]
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1215 = mem[_1194]
                        mem[mem[64] + 68] = sub_131edc46Address
                        mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 132] = _1215
                        require ext_code.size(sub_8525a65aAddress)
                        call sub_8525a65aAddress.0xd2472b1b with:
                             gas gas_remaining wei
                            args pools[address(arg1)].field_256, address(_1087), sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _1215
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = sub_131edc46Address
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
            if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
            continue 
        mem[mem[64] + 4] = pools[address(arg1)].field_1536
        mem[mem[64] + 36] = s
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pools[address(arg1)].field_1536, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _771 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_771] == bool(mem[_771])
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = sub_6af66772Address
        require ext_code.size(pools[address(arg1)].field_1536)
        call pools[address(arg1)].field_1536.0x8fcf4822 with:
             gas gas_remaining wei
            args s, sub_6af66772Address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _793 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_793] == bool(mem[_793])
        if sub_8525a65aAddress:
            require ext_code.size(sub_8525a65aAddress)
            call sub_8525a65aAddress.0xac2ddb3b with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_256, sub_6af66772Address, s, pools[pools[address(arg1)].field_256].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6c33b8f6: pools[address(arg1)].field_1536, sub_6af66772Address, s
        emit 0x7edf56d3: 0
    else:
        if 0 and sub_64a4f078 > -1 / 0:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 100] = sub_131edc46Address
        mem[(2 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_131edc46Address, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_131edc46Address)
        call sub_131edc46Address.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = (4 * ceil32(return_data.size)) + 260
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_131edc46Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call sub_131edc46Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if 0 < (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
                    revert with 0, 17
                idx = 0
                s = -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
                while idx < sub_2c7b09cb.length:
                    mem[0] = 110
                    if not sub_2c7b09cb[idx].field_944:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if 0 and sub_2c7b09cb[idx].field_512 > -1 / 0:
                        revert with 0, 17
                    if sub_2c7b09cb[idx].field_928:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_6af66772Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1649] == bool(mem[_1649])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_6af66772Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1650] == bool(mem[_1650])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_6af66772Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_6af66772Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1776] == bool(mem[_1776])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1920 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1948 = mem[_1920]
                                require mem[_1920] == mem[_1920 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1984 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2008 = mem[_1984]
                                mem[mem[64] + 68] = sub_6af66772Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2008
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_1948), sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2008
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_6af66772Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = sub_131edc46Address
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1632] == bool(mem[_1632])
                        require ext_code.size(sub_131edc46Address)
                        call sub_131edc46Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_131edc46Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_131edc46Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1849] == bool(mem[_1849])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_131edc46Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_131edc46Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1850] == bool(mem[_1850])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_131edc46Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_131edc46Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1949 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1949] == bool(mem[_1949])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2026 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2050 = mem[_2026]
                                require mem[_2026] == mem[_2026 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2088 = mem[_2080]
                                mem[mem[64] + 68] = sub_131edc46Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2088
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_2050), sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2088
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_131edc46Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                    continue 
                mem[mem[64] + 4] = pools[address(arg1)].field_1536
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_1536, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1536] == bool(mem[_1536])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = sub_6af66772Address
                require ext_code.size(pools[address(arg1)].field_1536)
                call pools[address(arg1)].field_1536.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, sub_6af66772Address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1608] == bool(mem[_1608])
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 < (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
                    revert with 0, 17
                idx = 0
                s = -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
                while idx < sub_2c7b09cb.length:
                    mem[0] = 110
                    if not sub_2c7b09cb[idx].field_944:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if 0 and sub_2c7b09cb[idx].field_512 > -1 / 0:
                        revert with 0, 17
                    if sub_2c7b09cb[idx].field_928:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_6af66772Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1652] == bool(mem[_1652])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_6af66772Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1653] == bool(mem[_1653])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_6af66772Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_6af66772Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1777 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1777] == bool(mem[_1777])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1925 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1950 = mem[_1925]
                                require mem[_1925] == mem[_1925 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1985 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2009 = mem[_1985]
                                mem[mem[64] + 68] = sub_6af66772Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2009
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_1950), sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2009
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_6af66772Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = sub_131edc46Address
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1633] == bool(mem[_1633])
                        require ext_code.size(sub_131edc46Address)
                        call sub_131edc46Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_131edc46Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_131edc46Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1852] == bool(mem[_1852])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_131edc46Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_131edc46Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1853] == bool(mem[_1853])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_131edc46Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_131edc46Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1951 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1951] == bool(mem[_1951])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2029 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2053 = mem[_2029]
                                require mem[_2029] == mem[_2029 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2081 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2089 = mem[_2081]
                                mem[mem[64] + 68] = sub_131edc46Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2089
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_2053), sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2089
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_131edc46Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                    continue 
                mem[mem[64] + 4] = pools[address(arg1)].field_1536
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_1536, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1537 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1537] == bool(mem[_1537])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = sub_6af66772Address
                require ext_code.size(pools[address(arg1)].field_1536)
                call pools[address(arg1)].field_1536.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, sub_6af66772Address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1613] == bool(mem[_1613])
        else:
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 0 < (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
                    revert with 0, 17
                idx = 0
                s = -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
                while idx < sub_2c7b09cb.length:
                    mem[0] = 110
                    if not sub_2c7b09cb[idx].field_944:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if 0 and sub_2c7b09cb[idx].field_512 > -1 / 0:
                        revert with 0, 17
                    if sub_2c7b09cb[idx].field_928:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_6af66772Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1655] == bool(mem[_1655])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_6af66772Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1656 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1656] == bool(mem[_1656])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_6af66772Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_6af66772Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1778] == bool(mem[_1778])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1930 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1952 = mem[_1930]
                                require mem[_1930] == mem[_1930 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1986 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2010 = mem[_1986]
                                mem[mem[64] + 68] = sub_6af66772Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2010
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_1952), sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2010
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_6af66772Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = sub_131edc46Address
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1634] == bool(mem[_1634])
                        require ext_code.size(sub_131edc46Address)
                        call sub_131edc46Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_131edc46Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_131edc46Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1855] == bool(mem[_1855])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_131edc46Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_131edc46Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1856 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1856] == bool(mem[_1856])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_131edc46Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_131edc46Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1953] == bool(mem[_1953])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2032 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2056 = mem[_2032]
                                require mem[_2032] == mem[_2032 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2082 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2090 = mem[_2082]
                                mem[mem[64] + 68] = sub_131edc46Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2090
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_2056), sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2090
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_131edc46Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                    continue 
                mem[mem[64] + 4] = pools[address(arg1)].field_1536
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_1536, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1538] == bool(mem[_1538])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = sub_6af66772Address
                require ext_code.size(pools[address(arg1)].field_1536)
                call pools[address(arg1)].field_1536.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, sub_6af66772Address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1618] == bool(mem[_1618])
            else:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0 < (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
                    revert with 0, 17
                idx = 0
                s = -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
                while idx < sub_2c7b09cb.length:
                    mem[0] = 110
                    if not sub_2c7b09cb[idx].field_944:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if 0 and sub_2c7b09cb[idx].field_512 > -1 / 0:
                        revert with 0, 17
                    if sub_2c7b09cb[idx].field_928:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_6af66772Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1658] == bool(mem[_1658])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_6af66772Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1659] == bool(mem[_1659])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_6af66772Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_6af66772Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1779 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1779] == bool(mem[_1779])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1935 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1954 = mem[_1935]
                                require mem[_1935] == mem[_1935 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1987 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2011 = mem[_1987]
                                mem[mem[64] + 68] = sub_6af66772Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2011
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_1954), sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2011
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_6af66772Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_6af66772Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = sub_131edc46Address
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_6af66772Address)
                        call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1635] == bool(mem[_1635])
                        require ext_code.size(sub_131edc46Address)
                        call sub_131edc46Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(sub_131edc46Address)
                        if sub_2c7b09cb[idx].field_936:
                            call sub_131edc46Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1858] == bool(mem[_1858])
                            mem[mem[64]] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 32] = sub_131edc46Address
                            mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        else:
                            call sub_131edc46Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1859] == bool(mem[_1859])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = sub_131edc46Address
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x8fcf4822 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, sub_131edc46Address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1955] == bool(mem[_1955])
                            if sub_8525a65aAddress:
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.getStakingToken() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2035 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2059 = mem[_2035]
                                require mem[_2035] == mem[_2035 + 12 len 20]
                                require ext_code.size(sub_2c7b09cb[idx].field_768)
                                staticcall sub_2c7b09cb[idx].field_768.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2091 = mem[_2083]
                                mem[mem[64] + 68] = sub_131edc46Address
                                mem[mem[64] + 100] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                mem[mem[64] + 132] = _2091
                                require ext_code.size(sub_8525a65aAddress)
                                call sub_8525a65aAddress.0xd2472b1b with:
                                     gas gas_remaining wei
                                    args pools[address(arg1)].field_256, address(_2059), sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, _2091
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = sub_2c7b09cb[idx].field_768
                                mem[mem[64] + 32] = sub_131edc46Address
                                mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                                emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, sub_131edc46Address, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                    continue 
                mem[mem[64] + 4] = pools[address(arg1)].field_1536
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_1536, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1539] == bool(mem[_1539])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = sub_6af66772Address
                require ext_code.size(pools[address(arg1)].field_1536)
                call pools[address(arg1)].field_1536.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, sub_6af66772Address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1623] == bool(mem[_1623])
        if sub_8525a65aAddress:
            require ext_code.size(sub_8525a65aAddress)
            call sub_8525a65aAddress.0xac2ddb3b with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_256, sub_6af66772Address, s, pools[pools[address(arg1)].field_256].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6c33b8f6: pools[address(arg1)].field_1536, sub_6af66772Address, s
        if 0 < -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
            revert with 0, 17
        emit 0x7edf56d3: 0, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
}



}
