contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2)
#
const sub_f6a23320(?) = 500

const MAX_FEE = 3000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_0564d4a4Address;
address joeAddress;
address xJoeAddress;
address sub_bc109e74Address;
address sub_de5aa473Address;
address sub_a296454fAddress;
address routerAddress;
uint256 sub_64a4f078;
uint256 totalFee;
array of struct sub_2c7b09cb;
mapping of struct pools;
mapping of address sub_1631b194;
uint8 sub_89c72b77;
uint8 sub_83199b5e; offset 8
uint256 stor113; offset 8
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332202;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332203;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332204;
array of struct stor69290179047559764897525587595065000388900846244344453231461793201804346332205;

function sub_0564d4a4(?) payable {
    return sub_0564d4a4Address
}

function getPoolInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pools[address(arg1)].field_0, 
           bool(pools[address(arg1)].field_256),
           pools[address(arg1)].field_256,
           pools[address(arg1)].field_512,
           pools[address(arg1)].field_768,
           pools[address(arg1)].field_1024
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

function xJoe() payable {
    return xJoeAddress
}

function sub_64a4f078(?) payable {
    return sub_64a4f078
}

function sub_83199b5e(?) payable {
    return bool(sub_83199b5e)
}

function sub_89c72b77(?) payable {
    return bool(sub_89c72b77)
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
           pools[arg1].field_1024
}

function joe() payable {
    return joeAddress
}

function sub_bc109e74(?) payable {
    return sub_bc109e74Address
}

function sub_de5aa473(?) payable {
    return sub_de5aa473Address
}

function router() payable {
    return routerAddress
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

function sub_58a5038f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_89c72b77 = uint8(bool(arg1))
}

function sub_de1ce602(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor113 = Mask(248, 0, bool(arg1))
}

function setMasterChief(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_a296454fAddress = arg1
    emit 0xf1f9199d: arg1
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_256 = 0
    emit PoolRemoved(arg1);
}

function sub_5e09d3ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_de5aa473Address = address(arg1)
    emit 0x10f12a67: address(arg1)
}

function sub_c31720d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if xJoeAddress:
        revert with 0, 'xJoe already set'
    xJoeAddress = address(arg1)
}

function sub_638f9ee7(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.0x2db9680a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_50968674(?) payable {
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2212459(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_1024 = address(arg2)
    emit 0x70303f45: address(arg1)
}

function sub_229a3dc2(?) payable {
    require ext_code.size(sub_bc109e74Address)
    staticcall sub_bc109e74Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f461f428(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.0xfc2f53b6 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c9b0162b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    pools[address(arg1)].field_768 = address(arg2)
    emit 0x85d7cbd4: address(arg1), address(arg2)
}

function sub_9f600fd7(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.userInfos(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0]
}

function sub_c7f30654(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.userInfos(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[96]
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
    if 3000 < totalFee + arg1 - sub_64a4f078:
        revert with 0, 'MAX Fee reached'
    sub_64a4f078 = arg1
}

function sub_4a06c77f(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.0xfc2f53b6 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_0564d4a4Address)
        call sub_0564d4a4Address.0x4e71d92d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x3c0c3af0: ext_call.return_data[0]
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
    if totalFee + arg2 - sub_2c7b09cb[arg1].field_512 > 3000:
        revert with 0, 'Max fee reached'
    if totalFee < sub_2c7b09cb[arg1].field_512:
        revert with 0, 17
    if totalFee - sub_2c7b09cb[arg1].field_512 > !arg2:
        revert with 0, 17
    totalFee = totalFee - sub_2c7b09cb[arg1].field_512 + arg2
    sub_2c7b09cb[arg1].field_512 = arg2
    emit SetFee(sub_2c7b09cb[arg1].field_768, arg2);
}

function sub_b6039cbf(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
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
    joeAddress = address(arg1)
    sub_de5aa473Address = address(arg2)
    sub_a296454fAddress = address(arg3)
    sub_64a4f078 = arg7
    totalFee = arg7
    sub_bc109e74Address = address(arg4)
    routerAddress = address(arg5)
    sub_0564d4a4Address = address(arg6)
}

function sub_7ca20928(?) payable {
    require calldata.size - 4 >= 192
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not address(arg4):
        revert with 0, 'No fees to address 0'
    if totalFee > !arg3:
        revert with 0, 17
    if totalFee + arg3 > 3000:
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

function sub_01d726d4(?) payable {
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.userInfos(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0564d4a4Address)
    staticcall sub_0564d4a4Address.0x2db9680a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 100):
        revert with 0, 17
    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 100) + 10^18:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / 100 < ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 > !((ext_call.return_data[0] * ext_call.return_data[0] / 100) - ext_call.return_data[0]):
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 100) + -ext_call.return_data[0] + 10^18)
}

function sub_97ead276(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
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

function sub_ac01ffc5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).0x5bc59ce7 with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2a5ac3f4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1:
        require ext_code.size(sub_0564d4a4Address)
        staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(joeAddress)
        staticcall joeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, sub_0564d4a4Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            require ext_code.size(joeAddress)
            call joeAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_0564d4a4Address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_0564d4a4Address)
        call sub_0564d4a4Address.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x3c0c3af0: ext_call.return_data[0]
    emit 0x15df702e: arg1
}

function sub_ace1d7a1(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if pools[address(arg2)].field_256:
        revert with 0, 'Pool is already registered and active'
    if ceil32(arg3.length) <= arg3.length:
        require ext_code.size(0xddf6a7672b475b150f0cd62530e9fa18a1f0653)
        delegate 0xddf6a7672b475b150f0cd62530e9fa18a1f0653.0x8f00c962 with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 64) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 96
    else:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 198] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 230 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 64) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[arg4.length + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 230] = 0
        require ext_code.size(0xddf6a7672b475b150f0cd62530e9fa18a1f0653)
        delegate 0xddf6a7672b475b150f0cd62530e9fa18a1f0653.0x8f00c962 with:
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 230 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 96
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(sub_a296454fAddress)
    call sub_a296454fAddress.0x3b3f0ee6 with:
         gas gas_remaining wei
        args address(delegate.return_data[0]), joeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xd38f72741596ea652523671a3cd73c8095dfb30b)
    delegate 0xd38f72741596ea652523671a3cd73c8095dfb30b.0x213014ab with:
         gas gas_remaining wei
        args arg1, address(delegate.return_data[0]), address(arg2), this.address, sub_a296454fAddress, address(ext_call.return_data[0]), xJoeAddress, routerAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(sub_a296454fAddress)
    call sub_a296454fAddress.0x266f24b7 with:
         gas gas_remaining wei
        args arg5, address(delegate.return_data[0]), address(ext_call.return_data[0]), address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    pools[address(arg2)].field_0 = arg1
    pools[address(arg2)].field_256 = 1
    pools[address(arg2)].field_264 = address(arg2)
    pools[address(arg2)].field_424 = 0
    pools[address(arg2)].field_512 = address(delegate.return_data[0])
    pools[address(arg2)].field_768 = address(ext_call.return_data[0])
    pools[address(arg2)].field_1024 = address(delegate.return_data[0])
    emit PoolAdded(address(arg2));
}

function sub_162febcf(?) payable {
    require calldata.size - 4 >= 32
    if not sub_89c72b77:
        if arg1:
            require ext_code.size(sub_0564d4a4Address)
            staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(joeAddress)
            staticcall joeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_0564d4a4Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                require ext_code.size(joeAddress)
                call joeAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_0564d4a4Address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_0564d4a4Address)
            call sub_0564d4a4Address.deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x3c0c3af0: ext_call.return_data[0]
        emit 0x15df702e: arg1
    else:
        require ext_code.size(sub_0564d4a4Address)
        staticcall sub_0564d4a4Address.userInfos(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(joeAddress)
        staticcall joeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0564d4a4Address)
        staticcall sub_0564d4a4Address.0x2db9680a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 > !(ext_call.return_data[0] * ext_call.return_data[0] / 100):
            revert with 0, 17
        if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 100) + 10^18:
            require ext_code.size(sub_0564d4a4Address)
            staticcall sub_0564d4a4Address.userInfos(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if block.timestamp > ext_call.return_data[96]:
                require ext_code.size(joeAddress)
                staticcall joeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_0564d4a4Address)
                    staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(joeAddress)
                    staticcall joeAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, sub_0564d4a4Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_code.size(joeAddress)
                        call joeAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_0564d4a4Address, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_0564d4a4Address)
                    call sub_0564d4a4Address.deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x3c0c3af0: ext_call.return_data[0]
                emit 0x15df702e: ext_call.return_data[0]
            else:
                if sub_83199b5e:
                    require ext_code.size(joeAddress)
                    staticcall joeAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_0564d4a4Address)
                        staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_0564d4a4Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(joeAddress)
                            call joeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_0564d4a4Address, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(sub_0564d4a4Address)
                        call sub_0564d4a4Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3c0c3af0: ext_call.return_data[0]
                    emit 0x15df702e: ext_call.return_data[0]
                else:
                    require ext_code.size(sub_0564d4a4Address)
                    staticcall sub_0564d4a4Address.0x2db9680a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 100 < ext_call.return_data[0]:
                        revert with 0, 17
                    if arg1 and -ext_call.return_data[0] + 100 > -1 / arg1:
                        revert with 0, 17
                    if (100 * arg1) - (ext_call.return_data[0] * arg1) / 100:
                        require ext_code.size(sub_0564d4a4Address)
                        staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_0564d4a4Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (100 * arg1) - (ext_call.return_data[0] * arg1) / 100:
                            require ext_code.size(joeAddress)
                            call joeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_0564d4a4Address, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(sub_0564d4a4Address)
                        call sub_0564d4a4Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((100 * arg1) - (ext_call.return_data[0] * arg1) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3c0c3af0: ext_call.return_data[0]
                    emit 0x15df702e: ((100 * arg1) - (ext_call.return_data[0] * arg1) / 100)
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / 100 < ext_call.return_data[0]:
                revert with 0, 17
            if 10^18 > !((ext_call.return_data[0] * ext_call.return_data[0] / 100) - ext_call.return_data[0]):
                revert with 0, 17
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 100) + -ext_call.return_data[0] + 10^18:
                require ext_code.size(sub_0564d4a4Address)
                staticcall sub_0564d4a4Address.userInfos(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if block.timestamp > ext_call.return_data[96]:
                    require ext_code.size(joeAddress)
                    staticcall joeAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_0564d4a4Address)
                        staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_0564d4a4Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            require ext_code.size(joeAddress)
                            call joeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_0564d4a4Address, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(sub_0564d4a4Address)
                        call sub_0564d4a4Address.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3c0c3af0: ext_call.return_data[0]
                    emit 0x15df702e: ext_call.return_data[0]
                else:
                    if sub_83199b5e:
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_0564d4a4Address)
                            staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(joeAddress)
                            staticcall joeAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, sub_0564d4a4Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                require ext_code.size(joeAddress)
                                call joeAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_0564d4a4Address, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_0564d4a4Address)
                            call sub_0564d4a4Address.deposit(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3c0c3af0: ext_call.return_data[0]
                        emit 0x15df702e: ext_call.return_data[0]
                    else:
                        require ext_code.size(sub_0564d4a4Address)
                        staticcall sub_0564d4a4Address.0x2db9680a with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 100 < ext_call.return_data[0]:
                            revert with 0, 17
                        if arg1 and -ext_call.return_data[0] + 100 > -1 / arg1:
                            revert with 0, 17
                        if (100 * arg1) - (ext_call.return_data[0] * arg1) / 100:
                            require ext_code.size(sub_0564d4a4Address)
                            staticcall sub_0564d4a4Address.0xfc2f53b6 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(joeAddress)
                            staticcall joeAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, sub_0564d4a4Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < (100 * arg1) - (ext_call.return_data[0] * arg1) / 100:
                                require ext_code.size(joeAddress)
                                call joeAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_0564d4a4Address, -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(sub_0564d4a4Address)
                            call sub_0564d4a4Address.deposit(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((100 * arg1) - (ext_call.return_data[0] * arg1) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3c0c3af0: ext_call.return_data[0]
                        emit 0x15df702e: ((100 * arg1) - (ext_call.return_data[0] * arg1) / 100)
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
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(sub_de5aa473Address)
    call sub_de5aa473Address.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pools[address(arg1)].field_0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
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
                if sub_2c7b09cb[idx].field_936:
                    mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    require ext_code.size(joeAddress)
                    call joeAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_280] == bool(mem[_280])
                    mem[mem[64]] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 32] = joeAddress
                    mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, joeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                    require ext_code.size(joeAddress)
                    staticcall joeAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, sub_2c7b09cb[idx].field_768
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_287] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 36] = joeAddress
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_348] == bool(mem[_348])
                    else:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = -1
                        require ext_code.size(joeAddress)
                        call joeAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_349] == bool(mem[_349])
                        mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 36] = joeAddress
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_405] == bool(mem[_405])
            else:
                require ext_code.size(xJoeAddress)
                call xJoeAddress.0xf59dc57a with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_2c7b09cb[idx].field_936:
                    mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    require ext_code.size(xJoeAddress)
                    call xJoeAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_306] == bool(mem[_306])
                    mem[mem[64]] = sub_2c7b09cb[idx].field_768
                    mem[mem[64] + 32] = xJoeAddress
                    mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, xJoeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                    require ext_code.size(xJoeAddress)
                    staticcall xJoeAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, sub_2c7b09cb[idx].field_768
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_311] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                        mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 36] = xJoeAddress
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_386] == bool(mem[_386])
                    else:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = -1
                        require ext_code.size(xJoeAddress)
                        call xJoeAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_387] == bool(mem[_387])
                        mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64] + 36] = xJoeAddress
                        require ext_code.size(sub_2c7b09cb[idx].field_768)
                        call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_422] == bool(mem[_422])
            if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
            continue 
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = pools[address(arg1)].field_768
        require ext_code.size(joeAddress)
        staticcall joeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, pools[address(arg1)].field_768
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_236] >= s:
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = joeAddress
            require ext_code.size(pools[address(arg1)].field_768)
            call pools[address(arg1)].field_768.0x8fcf4822 with:
                 gas gas_remaining wei
                args s, joeAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_260] == bool(mem[_260])
        else:
            mem[mem[64] + 4] = pools[address(arg1)].field_768
            mem[mem[64] + 36] = -1
            require ext_code.size(joeAddress)
            call joeAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[address(arg1)].field_768, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == bool(mem[_261])
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = joeAddress
            require ext_code.size(pools[address(arg1)].field_768)
            call pools[address(arg1)].field_768.0x8fcf4822 with:
                 gas gas_remaining wei
                args s, joeAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_344] == bool(mem[_344])
        emit 0x146539a0: 0
    else:
        if 0 and sub_64a4f078 > -1 / 0:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = xJoeAddress
        require ext_code.size(joeAddress)
        staticcall joeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, xJoeAddress
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
            mem[(4 * ceil32(return_data.size)) + 96] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            require ext_code.size(xJoeAddress)
            call xJoeAddress.depositFor(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                    if sub_2c7b09cb[idx].field_936:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(joeAddress)
                        call joeAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _283 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_283] == bool(mem[_283])
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = joeAddress
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, joeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_2c7b09cb[idx].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_290] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = joeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_352] == bool(mem[_352])
                        else:
                            mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 36] = -1
                            require ext_code.size(joeAddress)
                            call joeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_353] == bool(mem[_353])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = joeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_407] == bool(mem[_407])
                else:
                    require ext_code.size(xJoeAddress)
                    call xJoeAddress.0xf59dc57a with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2c7b09cb[idx].field_936:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(xJoeAddress)
                        call xJoeAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_308] == bool(mem[_308])
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = xJoeAddress
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, xJoeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                        require ext_code.size(xJoeAddress)
                        staticcall xJoeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_2c7b09cb[idx].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_312] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = xJoeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_388] == bool(mem[_388])
                        else:
                            mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 36] = -1
                            require ext_code.size(xJoeAddress)
                            call xJoeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_389] == bool(mem[_389])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = xJoeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _423 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_423] == bool(mem[_423])
                if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = pools[address(arg1)].field_768
            require ext_code.size(joeAddress)
            staticcall joeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, pools[address(arg1)].field_768
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_237] >= s:
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = joeAddress
                require ext_code.size(pools[address(arg1)].field_768)
                call pools[address(arg1)].field_768.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, joeAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_264] == bool(mem[_264])
            else:
                mem[mem[64] + 4] = pools[address(arg1)].field_768
                mem[mem[64] + 36] = -1
                require ext_code.size(joeAddress)
                call joeAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_768, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_265] == bool(mem[_265])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = joeAddress
                require ext_code.size(pools[address(arg1)].field_768)
                call pools[address(arg1)].field_768.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, joeAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_345] == bool(mem[_345])
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = xJoeAddress
            mem[(4 * ceil32(return_data.size)) + 132] = -1
            require ext_code.size(joeAddress)
            call joeAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args xJoeAddress, -1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            require ext_code.size(xJoeAddress)
            call xJoeAddress.depositFor(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                    if sub_2c7b09cb[idx].field_936:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(joeAddress)
                        call joeAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_286] == bool(mem[_286])
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = joeAddress
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, joeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                        require ext_code.size(joeAddress)
                        staticcall joeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_2c7b09cb[idx].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_293] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = joeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_356] == bool(mem[_356])
                        else:
                            mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 36] = -1
                            require ext_code.size(joeAddress)
                            call joeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_357] == bool(mem[_357])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = joeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, joeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_409] == bool(mem[_409])
                else:
                    require ext_code.size(xJoeAddress)
                    call xJoeAddress.0xf59dc57a with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2c7b09cb[idx].field_936:
                        mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 36] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        require ext_code.size(xJoeAddress)
                        call xJoeAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_2c7b09cb[idx].field_768, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _310 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_310] == bool(mem[_310])
                        mem[mem[64]] = sub_2c7b09cb[idx].field_768
                        mem[mem[64] + 32] = xJoeAddress
                        mem[mem[64] + 64] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                        emit 0x6c33b8f6: sub_2c7b09cb[idx].field_768, xJoeAddress, (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_2c7b09cb[idx].field_768
                        require ext_code.size(xJoeAddress)
                        staticcall xJoeAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, sub_2c7b09cb[idx].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_313] >= (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = xJoeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_390] == bool(mem[_390])
                        else:
                            mem[mem[64] + 4] = sub_2c7b09cb[idx].field_768
                            mem[mem[64] + 36] = -1
                            require ext_code.size(xJoeAddress)
                            call xJoeAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_2c7b09cb[idx].field_768, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_391] == bool(mem[_391])
                            mem[mem[64] + 4] = (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000
                            mem[mem[64] + 36] = xJoeAddress
                            require ext_code.size(sub_2c7b09cb[idx].field_768)
                            call sub_2c7b09cb[idx].field_768.0x5bc59ce7 with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000, xJoeAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _424 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_424] == bool(mem[_424])
                if s < (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - ((ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) - (ext_call.return_data[0] * sub_2c7b09cb[idx].field_512) / 10000)
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = pools[address(arg1)].field_768
            require ext_code.size(joeAddress)
            staticcall joeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, pools[address(arg1)].field_768
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_238] >= s:
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = joeAddress
                require ext_code.size(pools[address(arg1)].field_768)
                call pools[address(arg1)].field_768.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, joeAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_268] == bool(mem[_268])
            else:
                mem[mem[64] + 4] = pools[address(arg1)].field_768
                mem[mem[64] + 36] = -1
                require ext_code.size(joeAddress)
                call joeAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pools[address(arg1)].field_768, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_269] == bool(mem[_269])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = joeAddress
                require ext_code.size(pools[address(arg1)].field_768)
                call pools[address(arg1)].field_768.0x8fcf4822 with:
                     gas gas_remaining wei
                    args s, joeAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_346] == bool(mem[_346])
        if 0 < -(ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000:
            revert with 0, 17
        emit 0x146539a0: 0, (ext_call.return_data[0] * sub_64a4f078) - (ext_call.return_data[0] * sub_64a4f078) / 10000
}



}
