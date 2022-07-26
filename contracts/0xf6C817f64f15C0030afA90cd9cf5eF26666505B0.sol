contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - approve(address arg1, address arg2, uint256 arg3)
#
const getVersion = 'v0.1', 0

const version = 1


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_49f961d6Address;
mapping of uint8 stor102;
uint8 stor103; offset 160
uint128 stor103; offset 160
address stor103;
address stor104;

function isAuth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor102[address(arg1)])
}

function sub_49f961d6(?) {
    return sub_49f961d6Address
}

function owner() {
    return owner
}

function _fallback() payable {
    emit Received(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8925a118(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor103.field_0) = address(arg1)
}

function sub_d42c0e55(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor103.field_160) = Mask(96, 0, bool(arg1))
}

function enable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor102[msg.sender]:
        revert with 0, 'not allowed'
    if not arg1:
        revert with 0, 'not-valid'
    if stor102[address(arg1)]:
        revert with 0, 'already-enabled'
    stor102[address(arg1)] = 1
}

function disable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor102[msg.sender]:
        revert with 0, 'not allowed'
    if not arg1:
        revert with 0, 'not-valid'
    if not stor102[address(arg1)]:
        revert with 0, 'already-disabled'
    stor102[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    stor102[address(arg1)] = 1
    if ext_code.size(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_49f961d6Address = arg2
        emit 0xeca794cf: sub_49f961d6Address, arg2
        address(stor103.field_0) = arg3
        emit NewAccount(address(arg1), this.address);
    else:
        uint16(stor0.field_0) = 257
        sub_49f961d6Address = arg2
        emit 0xeca794cf: sub_49f961d6Address, arg2
        uint8(stor0.field_8) = 0
        address(stor103.field_0) = arg3
        emit NewAccount(address(arg1), this.address);
        uint8(stor0.field_8) = 0
}

function sub_b6e7cc44(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor103.field_160):
        revert with 0, 'Not allowed!'
    if arg3 > !msg.value:
        revert with 'NH{q', 17
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    call address(arg1) with:
       value arg3 + msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if ext_call.success:
    if not return_data.size:
        mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000] = 32, 0x8c379a000000000000000000000000000000000000000000000000000000000, mem[164 len 0x8c3799fffffffffffffffffffffffffffffffffffffffffffffffffffffffdc]
        revert with 0, 
                    32,
                    0x8c379a000000000000000000000000000000000000000000000000000000000,
                    mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000]
    revert with 0, 
                32,
                return_data.size,
                ext_call.return_data[0 len return_data.size],
                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
}

function sub_3ae0777a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor104 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed: caller is not the CertifiedAddress'
    mem[196 len arg2.length] = arg2[all]
    mem[arg2.length + 196] = 0
    mem[ceil32(arg2.length) + 196 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg2.length) + 196] = 0
    mem[ceil32(arg2.length) + 196 len floor32(ceil32(arg2.length) + 99)] = Mask(32, 224, sha3(arg1[all])) >> 224, 0, 0, arg2.length, arg2[all], Mask(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
    delegate stor104 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[arg2.length + 228 len (4 * ceil32(arg2.length)) + -arg2.length + 36]
    if delegate.return_code:
        stor104 = 0
    if return_data.size:
        revert with 0, 
                    32,
                    return_data.size,
                    ext_call.return_data[0 len return_data.size],
                    Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
    mem[ceil32(arg2.length) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    revert with 0, 
                32,
                ceil32(arg2.length) + 68,
                Mask(32, 224, sha3(arg1[all])) >> 224,
                0,
                0,
                arg2.length,
                arg2[all],
                mem[arg2.length + 196 len ceil32(arg2.length) - arg2.length],
                0,
                Mask(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 72, -(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 72) + 256, 32) >> -(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 72) + 256
}

function sub_d14536e8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if sub_49f961d6Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Permit: caller is not the Permit'
    require ext_code.size(address(stor103.field_0))
    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Permission verification failed!'
    mem[ceil32(arg3.length) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg3.length) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197] = 0
    mem[ceil32(arg3.length) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len floor32(ceil32(arg3.length) + 99)] = Mask(32, 224, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)) >> 224, 0, 0, arg3.length, arg3[all], Mask(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68, -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg3.length) + arg3.length + 28, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg3.length + 229 len (4 * ceil32(arg3.length)) + -arg3.length + 36]
    if delegate.return_code:
    if not return_data.size:
        revert with 0, 
                    32,
                    arg2.length,
                    arg2[all],
                    ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    revert with 0, 
                32,
                return_data.size,
                ext_call.return_data[0 len return_data.size],
                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
}

function withdrawAsset(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner != arg2:
        if not uint8(stor103.field_160):
            revert with 0, 'Not allowed!'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if eth.balance(this.address) < arg3:
            revert with 0, 'not enough AVAX balance'
        call arg2 with:
           value arg3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'helper::safeTransferAVAX: AVAX transfer failed'
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'not enough token balance'
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_8db2bc2b(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner == address(cd[36]):
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'withdraw length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if eth.balance(this.address) < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 'not enough AVAX balance'
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _675 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _680 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                s = 0
                while s < mem[_680]:
                    s = s + 32
                    continue 
                if ceil32(mem[_680]) <= mem[_680]:
                    call address(cd[36]) with:
                       value _675 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_680] + _680 + -mem[64] + 28]
                    if return_data.size:
                        _870 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_870] = return_data.size
                        mem[_870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_680] + _680 + 32] = 0
                    call address(cd[36]) with:
                       value _675 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_680] + _680 + -mem[64] + 28]
                    if return_data.size:
                        _871 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_871] = return_data.size
                        mem[_871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'helper::safeTransferAVAX: AVAX transfer failed'
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _662 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_662))
                staticcall address(_662).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if mem[_674] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 'not enough token balance'
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _698 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _704 = mem[(32 * idx) + 128]
                _706 = mem[64]
                mem[mem[64] + 36] = address(cd[36])
                mem[mem[64] + 68] = _698
                _712 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_712 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_712 + 36 len 28]
                mem[64] = _706 + 164
                mem[_706 + 100] = 32
                mem[_706 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_704)):
                    revert with 0, 'Address: call to non-contract'
                _746 = mem[_712]
                s = 0
                while s < _746:
                    mem[s + _706 + 164] = mem[s + _712 + 32]
                    s = s + 32
                    continue 
                if ceil32(_746) > _746:
                    mem[_746 + _706 + 164] = 0
                call address(_704).mem[_706 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_706 + 168 len _746 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_706 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_706 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _706 + 232] = mem[idx + _706 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_706 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _706 + ceil32(return_data.size) + 165
                    mem[_706 + 164] = return_data.size
                    mem[_706 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_706 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_706 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _706 + ceil32(return_data.size) + 233] = mem[idx + _706 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_706 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_706 + 196] == bool(mem[_706 + 196])
                        if not mem[_706 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if not uint8(stor103.field_160):
            revert with 0, 'Not allowed!'
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'withdraw length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if eth.balance(this.address) < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 'not enough AVAX balance'
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _678 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _682 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                s = 0
                while s < mem[_682]:
                    s = s + 32
                    continue 
                if ceil32(mem[_682]) <= mem[_682]:
                    call address(cd[36]) with:
                       value _678 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_682] + _682 + -mem[64] + 28]
                    if return_data.size:
                        _874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_874] = return_data.size
                        mem[_874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_682] + _682 + 32] = 0
                    call address(cd[36]) with:
                       value _678 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_682] + _682 + -mem[64] + 28]
                    if return_data.size:
                        _875 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_875] = return_data.size
                        mem[_875 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'helper::safeTransferAVAX: AVAX transfer failed'
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _666 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_666))
                staticcall address(_666).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if mem[_677] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 'not enough token balance'
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _701 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _705 = mem[(32 * idx) + 128]
                _709 = mem[64]
                mem[mem[64] + 36] = address(cd[36])
                mem[mem[64] + 68] = _701
                _716 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_716 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_716 + 36 len 28]
                mem[64] = _709 + 164
                mem[_709 + 100] = 32
                mem[_709 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_705)):
                    revert with 0, 'Address: call to non-contract'
                _748 = mem[_716]
                s = 0
                while s < _748:
                    mem[s + _709 + 164] = mem[s + _716 + 32]
                    s = s + 32
                    continue 
                if ceil32(_748) > _748:
                    mem[_748 + _709 + 164] = 0
                call address(_705).mem[_709 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_709 + 168 len _748 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_709 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_709 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _709 + 232] = mem[idx + _709 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_709 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _709 + ceil32(return_data.size) + 165
                    mem[_709 + 164] = return_data.size
                    mem[_709 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_709 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_709 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _709 + ceil32(return_data.size) + 233] = mem[idx + _709 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_709 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_709 + 196] == bool(mem[_709 + 196])
                        if not mem[_709 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_d1b3b979(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if sub_49f961d6Address == msg.sender:
        require ('cd', 4).length >= 128
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require ('cd', 4)[1] == Mask(32, 224, ('cd', 4)[1])
        require ('cd', 4)[3] <= test266151307()
        require cd[4] + ('cd', 4)[3] + 67 < cd[4] + ('cd', 4).length + 36
        if cd[(cd[4] + ('cd', 4)[3] + 36)] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 < 96 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[96] = cd[(cd[4] + ('cd', 4)[3] + 36)]
        require ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 36)] + 68 <= ('cd', 4).length + 36
        mem[128 len cd[(cd[4] + ('cd', 4)[3] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]]
        if ('cd', 4)[2] > !msg.value:
            revert with 'NH{q', 17
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 101] = address(('cd', 4)[0])
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 133] = Mask(32, 224, ('cd', 4)[1])
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 165] = 96
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 197] = cd[(cd[4] + ('cd', 4)[3] + 36)]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 229 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
        if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) <= cd[(cd[4] + ('cd', 4)[3] + 36)]:
            require ext_code.size(address(stor103.field_0))
            call address(stor103.field_0).0xd098d39a with:
               value ('cd', 4)[2] + msg.value wei
                 gas gas_remaining wei
                args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), 96, cd[(cd[4] + ('cd', 4)[3] + 36)], call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _85 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64
            require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 <= test266151307()
            require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 128 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + return_data.size + 97
            _89 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97]
            if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 1 < 0 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98 > test266151307():
                revert with 'NH{q', 65
            mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97] = _89
            require _85 + _89 + 32 <= return_data.size
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_89)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + _85 + 129 len ceil32(_89)]
            if ceil32(_89) > _89:
                mem[_89 + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129] = 0
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _89
            mem[mem[64] + 64 len ceil32(_89)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_89)]
            if ceil32(_89) > _89:
                mem[_89 + mem[64] + 64] = 0
            return Array(len=_89, data=mem[mem[64] + 64 len ceil32(_89)])
        mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 229] = 0
        require ext_code.size(address(stor103.field_0))
        call address(stor103.field_0).0xd098d39a with:
           value ('cd', 4)[2] + msg.value wei
             gas gas_remaining wei
            args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), 96, cd[(cd[4] + ('cd', 4)[3] + 36)], call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _86 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64
        require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 <= test266151307()
        require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 128 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + return_data.size + 97
        _90 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97]
        if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 1 < 0 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98 > test266151307():
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97] = _90
        require _86 + _90 + 32 <= return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_90)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + _86 + 129 len ceil32(_90)]
        if ceil32(_90) > _90:
            mem[_90 + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129] = 0
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _90
        mem[mem[64] + 64 len ceil32(_90)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_90)]
        if ceil32(_90) > _90:
            mem[_90 + mem[64] + 64] = 0
        return Array(len=_90, data=mem[mem[64] + 64 len ceil32(_90)])
    if owner != msg.sender:
        revert with 0, 'Permit: caller is not the Permit'
    require ('cd', 4).length >= 128
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == Mask(32, 224, ('cd', 4)[1])
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[3] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 < 96 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[(cd[4] + ('cd', 4)[3] + 36)]
    require ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 36)] + 68 <= ('cd', 4).length + 36
    mem[128 len cd[(cd[4] + ('cd', 4)[3] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]]
    if ('cd', 4)[2] > !msg.value:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 101] = address(('cd', 4)[0])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 133] = Mask(32, 224, ('cd', 4)[1])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 165] = 96
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 197] = cd[(cd[4] + ('cd', 4)[3] + 36)]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 229 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
    if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) <= cd[(cd[4] + ('cd', 4)[3] + 36)]:
        require ext_code.size(address(stor103.field_0))
        call address(stor103.field_0).0xd098d39a with:
           value ('cd', 4)[2] + msg.value wei
             gas gas_remaining wei
            args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), 96, cd[(cd[4] + ('cd', 4)[3] + 36)], call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _87 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64
        require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 <= test266151307()
        require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 128 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + return_data.size + 97
        _91 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97]
        if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 1 < 0 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98 > test266151307():
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97] = _91
        require _87 + _91 + 32 <= return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_91)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + _87 + 129 len ceil32(_91)]
        if ceil32(_91) > _91:
            mem[_91 + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129] = 0
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _91
        mem[mem[64] + 64 len ceil32(_91)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_91)]
        if ceil32(_91) > _91:
            mem[_91 + mem[64] + 64] = 0
        return Array(len=_91, data=mem[mem[64] + 64 len ceil32(_91)])
    mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 229] = 0
    require ext_code.size(address(stor103.field_0))
    call address(stor103.field_0).0xd098d39a with:
       value ('cd', 4)[2] + msg.value wei
         gas gas_remaining wei
        args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), 96, cd[(cd[4] + ('cd', 4)[3] + 36)], call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _88 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64
    require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 <= test266151307()
    require ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 128 < ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + return_data.size + 97
    _92 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97]
    if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 1 < 0 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + 97 len 4], address(('cd', 4)[0]) << 64 + 97])) + 98
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 97] = _92
    require _88 + _92 + 32 <= return_data.size
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_92)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + _88 + 129 len ceil32(_92)]
    if ceil32(_92) > _92:
        mem[_92 + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _92
    mem[mem[64] + 64 len ceil32(_92)] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])) + ceil32(return_data.size) + 129 len ceil32(_92)]
    if ceil32(_92) > _92:
        mem[_92 + mem[64] + 64] = 0
    return Array(len=_92, data=mem[mem[64] + 64 len ceil32(_92)])
}

function sub_887d3797(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if sub_49f961d6Address == msg.sender:
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _9331 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _9337 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
            mem[mem[64] + 68] = 0
            _9339 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_9339 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9339 + 36 len 28]
            mem[64] = _9337 + 164
            mem[_9337 + 100] = 32
            mem[_9337 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9331)):
                revert with 0, 'Address: call to non-contract'
            _9353 = mem[_9339]
            s = 0
            while s < _9353:
                mem[s + _9337 + 164] = mem[s + _9339 + 32]
                s = s + 32
                continue 
            if ceil32(_9353) <= _9353:
                call address(_9331).mem[_9337 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9337 + 168 len _9353 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9337 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9337 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9337 + 232] = mem[idx + _9337 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9337 + 232]
                    if not mem[96]:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11721 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11739 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9337 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9337 + 232] = _11739
                            mem[_9337 + 164] = 68
                            mem[_9337 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + 200 len 28]
                            mem[64] = _9337 + 328
                            mem[_9337 + 264] = 32
                            mem[_9337 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + 328] = mem[s + _9337 + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + 396] = 0
                            call address(_9331).mem[_9337 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + 396] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + 329
                                mem[_9337 + 328] = return_data.size
                                mem[_9337 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + 360] == bool(mem[_9337 + 360])
                                    if not mem[_9337 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9337 + 168] = this.address
                            mem[_9337 + 200] = address(_11721)
                            require ext_code.size(address(_9331))
                            staticcall address(_9331).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11721)
                            mem[_9337 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9337 + ceil32(return_data.size) + 200] = address(_11721)
                            mem[_9337 + ceil32(return_data.size) + 232] = _11739
                            mem[_9337 + ceil32(return_data.size) + 164] = 68
                            mem[_9337 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11721) << 64
                            mem[64] = _9337 + ceil32(return_data.size) + 328
                            mem[_9337 + ceil32(return_data.size) + 264] = 32
                            mem[_9337 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + ceil32(return_data.size) + 328] = mem[s + _9337 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + ceil32(return_data.size) + 396] = 0
                            call address(_9331).mem[_9337 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 396] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9337 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9337 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + ceil32(return_data.size) + 360] == bool(mem[_9337 + ceil32(return_data.size) + 360])
                                    if not mem[_9337 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11842 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11865 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9337 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9337 + 232] = _11865
                            mem[_9337 + 164] = 68
                            mem[_9337 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + 200 len 28]
                            mem[64] = _9337 + 328
                            mem[_9337 + 264] = 32
                            mem[_9337 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + 328] = mem[s + _9337 + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + 396] = 0
                            call address(_9331).mem[_9337 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + 396] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + 329
                                mem[_9337 + 328] = return_data.size
                                mem[_9337 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + 360] == bool(mem[_9337 + 360])
                                    if not mem[_9337 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9337 + 168] = this.address
                            mem[_9337 + 200] = address(_11842)
                            require ext_code.size(address(_9331))
                            staticcall address(_9331).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11842)
                            mem[_9337 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9337 + ceil32(return_data.size) + 200] = address(_11842)
                            mem[_9337 + ceil32(return_data.size) + 232] = _11865
                            mem[_9337 + ceil32(return_data.size) + 164] = 68
                            mem[_9337 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11842) << 64
                            mem[64] = _9337 + ceil32(return_data.size) + 328
                            mem[_9337 + ceil32(return_data.size) + 264] = 32
                            mem[_9337 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + ceil32(return_data.size) + 328] = mem[s + _9337 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + ceil32(return_data.size) + 396] = 0
                            call address(_9331).mem[_9337 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 396] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9337 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9337 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + ceil32(return_data.size) + 360] == bool(mem[_9337 + ceil32(return_data.size) + 360])
                                    if not mem[_9337 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_9337 + 164] = return_data.size
                mem[_9337 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9337 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9337 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9337 + ceil32(return_data.size) + 233] = mem[idx + _9337 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11723 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11742 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9337 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9337 + ceil32(return_data.size) + 233] = _11742
                        mem[_9337 + ceil32(return_data.size) + 165] = 68
                        mem[_9337 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9337 + ceil32(return_data.size) + 329
                        mem[_9337 + ceil32(return_data.size) + 265] = 32
                        mem[_9337 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9331)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9337 + ceil32(return_data.size) + 329] = mem[s + _9337 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9337 + ceil32(return_data.size) + 397] = 0
                        call address(_9331).mem[_9337 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9337 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9337 + (2 * ceil32(return_data.size)) + 330
                            mem[_9337 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9337 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9337 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9337 + ceil32(return_data.size) + 361] == bool(mem[_9337 + ceil32(return_data.size) + 361])
                                if not mem[_9337 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9337 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9337 + ceil32(return_data.size) + 169] = this.address
                    mem[_9337 + ceil32(return_data.size) + 201] = address(_11723)
                    require ext_code.size(address(_9331))
                    staticcall address(_9331).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11723)
                    mem[_9337 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11723)
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11742
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11723) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9337 + 196] == bool(mem[_9337 + 196])
                    if not mem[_9337 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11845 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11866 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9337 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9337 + ceil32(return_data.size) + 233] = _11866
                        mem[_9337 + ceil32(return_data.size) + 165] = 68
                        mem[_9337 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9337 + ceil32(return_data.size) + 329
                        mem[_9337 + ceil32(return_data.size) + 265] = 32
                        mem[_9337 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9331)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9337 + ceil32(return_data.size) + 329] = mem[s + _9337 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9337 + ceil32(return_data.size) + 397] = 0
                        call address(_9331).mem[_9337 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9337 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9337 + (2 * ceil32(return_data.size)) + 330
                            mem[_9337 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9337 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9337 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9337 + ceil32(return_data.size) + 361] == bool(mem[_9337 + ceil32(return_data.size) + 361])
                                if not mem[_9337 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9337 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9337 + ceil32(return_data.size) + 169] = this.address
                    mem[_9337 + ceil32(return_data.size) + 201] = address(_11845)
                    require ext_code.size(address(_9331))
                    staticcall address(_9331).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11845)
                    mem[_9337 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11845)
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11866
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11845) << 64
            else:
                mem[_9353 + _9337 + 164] = 0
                call address(_9331).mem[_9337 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9337 + 168 len _9353 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9337 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9337 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9337 + 232] = mem[idx + _9337 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9337 + 232]
                    if not mem[96]:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11725 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11745 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9337 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9337 + 232] = _11745
                            mem[_9337 + 164] = 68
                            mem[_9337 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + 200 len 28]
                            mem[64] = _9337 + 328
                            mem[_9337 + 264] = 32
                            mem[_9337 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + 328] = mem[s + _9337 + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + 396] = 0
                            call address(_9331).mem[_9337 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + 396] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + 329
                                mem[_9337 + 328] = return_data.size
                                mem[_9337 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + 360] == bool(mem[_9337 + 360])
                                    if not mem[_9337 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9337 + 168] = this.address
                            mem[_9337 + 200] = address(_11725)
                            require ext_code.size(address(_9331))
                            staticcall address(_9331).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11725)
                            mem[_9337 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9337 + ceil32(return_data.size) + 200] = address(_11725)
                            mem[_9337 + ceil32(return_data.size) + 232] = _11745
                            mem[_9337 + ceil32(return_data.size) + 164] = 68
                            mem[_9337 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11725) << 64
                            mem[64] = _9337 + ceil32(return_data.size) + 328
                            mem[_9337 + ceil32(return_data.size) + 264] = 32
                            mem[_9337 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + ceil32(return_data.size) + 328] = mem[s + _9337 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + ceil32(return_data.size) + 396] = 0
                            call address(_9331).mem[_9337 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 396] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9337 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9337 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + ceil32(return_data.size) + 360] == bool(mem[_9337 + ceil32(return_data.size) + 360])
                                    if not mem[_9337 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11848 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11867 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9337 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9337 + 232] = _11867
                            mem[_9337 + 164] = 68
                            mem[_9337 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + 200 len 28]
                            mem[64] = _9337 + 328
                            mem[_9337 + 264] = 32
                            mem[_9337 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + 328] = mem[s + _9337 + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + 396] = 0
                            call address(_9331).mem[_9337 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + 396] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + 329
                                mem[_9337 + 328] = return_data.size
                                mem[_9337 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + 360] == bool(mem[_9337 + 360])
                                    if not mem[_9337 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9337 + 168] = this.address
                            mem[_9337 + 200] = address(_11848)
                            require ext_code.size(address(_9331))
                            staticcall address(_9331).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11848)
                            mem[_9337 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9337 + ceil32(return_data.size) + 200] = address(_11848)
                            mem[_9337 + ceil32(return_data.size) + 232] = _11867
                            mem[_9337 + ceil32(return_data.size) + 164] = 68
                            mem[_9337 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11848) << 64
                            mem[64] = _9337 + ceil32(return_data.size) + 328
                            mem[_9337 + ceil32(return_data.size) + 264] = 32
                            mem[_9337 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9331)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9337 + ceil32(return_data.size) + 328] = mem[s + _9337 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9337 + ceil32(return_data.size) + 396] = 0
                            call address(_9331).mem[_9337 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9337 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9337 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + 396] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9337 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9337 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9337 + ceil32(return_data.size) + 360] == bool(mem[_9337 + ceil32(return_data.size) + 360])
                                    if not mem[_9337 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_9337 + 164] = return_data.size
                mem[_9337 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9337 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9337 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9337 + ceil32(return_data.size) + 233] = mem[idx + _9337 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11727 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11748 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9337 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9337 + ceil32(return_data.size) + 233] = _11748
                        mem[_9337 + ceil32(return_data.size) + 165] = 68
                        mem[_9337 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9337 + ceil32(return_data.size) + 329
                        mem[_9337 + ceil32(return_data.size) + 265] = 32
                        mem[_9337 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9331)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9337 + ceil32(return_data.size) + 329] = mem[s + _9337 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9337 + ceil32(return_data.size) + 397] = 0
                        call address(_9331).mem[_9337 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9337 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9337 + (2 * ceil32(return_data.size)) + 330
                            mem[_9337 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9337 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9337 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9337 + ceil32(return_data.size) + 361] == bool(mem[_9337 + ceil32(return_data.size) + 361])
                                if not mem[_9337 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9337 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9337 + ceil32(return_data.size) + 169] = this.address
                    mem[_9337 + ceil32(return_data.size) + 201] = address(_11727)
                    require ext_code.size(address(_9331))
                    staticcall address(_9331).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11727)
                    mem[_9337 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11727)
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11748
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11727) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9337 + 196] == bool(mem[_9337 + 196])
                    if not mem[_9337 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11851 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11868 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9337 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9337 + ceil32(return_data.size) + 233] = _11868
                        mem[_9337 + ceil32(return_data.size) + 165] = 68
                        mem[_9337 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9337 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9337 + ceil32(return_data.size) + 329
                        mem[_9337 + ceil32(return_data.size) + 265] = 32
                        mem[_9337 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9331)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9337 + ceil32(return_data.size) + 329] = mem[s + _9337 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9337 + ceil32(return_data.size) + 397] = 0
                        call address(_9331).mem[_9337 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9337 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9337 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9337 + (2 * ceil32(return_data.size)) + 330
                            mem[_9337 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9337 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9337 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9337 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9337 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9337 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9337 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9337 + ceil32(return_data.size) + 361] == bool(mem[_9337 + ceil32(return_data.size) + 361])
                                if not mem[_9337 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9337 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9337 + ceil32(return_data.size) + 169] = this.address
                    mem[_9337 + ceil32(return_data.size) + 201] = address(_11851)
                    require ext_code.size(address(_9331))
                    staticcall address(_9331).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11851)
                    mem[_9337 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11851)
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11868
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11851) << 64
            mem[64] = _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
            mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9331)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                s = s + 32
                continue 
            mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call address(_9331).mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[64] = _9337 + (4 * ceil32(return_data.size)) + 330
            mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_9337 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_9337 + (4 * ceil32(return_data.size)) + 334] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _9337 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _9337 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_9337 + (4 * ceil32(return_data.size)) + 398]
            if not return_data.size:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 32
            require mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_9337 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[_9337 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_9337 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_9337 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_9337 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_9337 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _9337 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    else:
        if owner != msg.sender:
            revert with 0, 'Permit: caller is not the Permit'
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _9333 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _9338 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
            mem[mem[64] + 68] = 0
            _9341 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_9341 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9341 + 36 len 28]
            mem[64] = _9338 + 164
            mem[_9338 + 100] = 32
            mem[_9338 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9333)):
                revert with 0, 'Address: call to non-contract'
            _9355 = mem[_9341]
            s = 0
            while s < _9355:
                mem[s + _9338 + 164] = mem[s + _9341 + 32]
                s = s + 32
                continue 
            if ceil32(_9355) <= _9355:
                call address(_9333).mem[_9338 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9338 + 168 len _9355 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9338 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9338 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9338 + 232] = mem[idx + _9338 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9338 + 232]
                    if not mem[96]:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11729 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11751 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9338 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9338 + 232] = _11751
                            mem[_9338 + 164] = 68
                            mem[_9338 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + 200 len 28]
                            mem[64] = _9338 + 328
                            mem[_9338 + 264] = 32
                            mem[_9338 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + 328] = mem[s + _9338 + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + 396] = 0
                            call address(_9333).mem[_9338 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + 396] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + 329
                                mem[_9338 + 328] = return_data.size
                                mem[_9338 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + 360] == bool(mem[_9338 + 360])
                                    if not mem[_9338 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9338 + 168] = this.address
                            mem[_9338 + 200] = address(_11729)
                            require ext_code.size(address(_9333))
                            staticcall address(_9333).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11729)
                            mem[_9338 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9338 + ceil32(return_data.size) + 200] = address(_11729)
                            mem[_9338 + ceil32(return_data.size) + 232] = _11751
                            mem[_9338 + ceil32(return_data.size) + 164] = 68
                            mem[_9338 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11729) << 64
                            mem[64] = _9338 + ceil32(return_data.size) + 328
                            mem[_9338 + ceil32(return_data.size) + 264] = 32
                            mem[_9338 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + ceil32(return_data.size) + 328] = mem[s + _9338 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + ceil32(return_data.size) + 396] = 0
                            call address(_9333).mem[_9338 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 396] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9338 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9338 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + ceil32(return_data.size) + 360] == bool(mem[_9338 + ceil32(return_data.size) + 360])
                                    if not mem[_9338 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11854 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11869 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9338 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9338 + 232] = _11869
                            mem[_9338 + 164] = 68
                            mem[_9338 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + 200 len 28]
                            mem[64] = _9338 + 328
                            mem[_9338 + 264] = 32
                            mem[_9338 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + 328] = mem[s + _9338 + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + 396] = 0
                            call address(_9333).mem[_9338 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + 396] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + 329
                                mem[_9338 + 328] = return_data.size
                                mem[_9338 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + 360] == bool(mem[_9338 + 360])
                                    if not mem[_9338 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9338 + 168] = this.address
                            mem[_9338 + 200] = address(_11854)
                            require ext_code.size(address(_9333))
                            staticcall address(_9333).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11854)
                            mem[_9338 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9338 + ceil32(return_data.size) + 200] = address(_11854)
                            mem[_9338 + ceil32(return_data.size) + 232] = _11869
                            mem[_9338 + ceil32(return_data.size) + 164] = 68
                            mem[_9338 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11854) << 64
                            mem[64] = _9338 + ceil32(return_data.size) + 328
                            mem[_9338 + ceil32(return_data.size) + 264] = 32
                            mem[_9338 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + ceil32(return_data.size) + 328] = mem[s + _9338 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + ceil32(return_data.size) + 396] = 0
                            call address(_9333).mem[_9338 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 396] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9338 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9338 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + ceil32(return_data.size) + 360] == bool(mem[_9338 + ceil32(return_data.size) + 360])
                                    if not mem[_9338 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_9338 + 164] = return_data.size
                mem[_9338 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9338 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9338 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9338 + ceil32(return_data.size) + 233] = mem[idx + _9338 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11731 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11754 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9338 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9338 + ceil32(return_data.size) + 233] = _11754
                        mem[_9338 + ceil32(return_data.size) + 165] = 68
                        mem[_9338 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9338 + ceil32(return_data.size) + 329
                        mem[_9338 + ceil32(return_data.size) + 265] = 32
                        mem[_9338 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9333)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9338 + ceil32(return_data.size) + 329] = mem[s + _9338 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9338 + ceil32(return_data.size) + 397] = 0
                        call address(_9333).mem[_9338 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9338 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9338 + (2 * ceil32(return_data.size)) + 330
                            mem[_9338 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9338 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9338 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9338 + ceil32(return_data.size) + 361] == bool(mem[_9338 + ceil32(return_data.size) + 361])
                                if not mem[_9338 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9338 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9338 + ceil32(return_data.size) + 169] = this.address
                    mem[_9338 + ceil32(return_data.size) + 201] = address(_11731)
                    require ext_code.size(address(_9333))
                    staticcall address(_9333).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11731)
                    mem[_9338 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11731)
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11754
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11731) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9338 + 196] == bool(mem[_9338 + 196])
                    if not mem[_9338 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11857 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11870 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9338 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9338 + ceil32(return_data.size) + 233] = _11870
                        mem[_9338 + ceil32(return_data.size) + 165] = 68
                        mem[_9338 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9338 + ceil32(return_data.size) + 329
                        mem[_9338 + ceil32(return_data.size) + 265] = 32
                        mem[_9338 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9333)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9338 + ceil32(return_data.size) + 329] = mem[s + _9338 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9338 + ceil32(return_data.size) + 397] = 0
                        call address(_9333).mem[_9338 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9338 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9338 + (2 * ceil32(return_data.size)) + 330
                            mem[_9338 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9338 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9338 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9338 + ceil32(return_data.size) + 361] == bool(mem[_9338 + ceil32(return_data.size) + 361])
                                if not mem[_9338 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9338 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9338 + ceil32(return_data.size) + 169] = this.address
                    mem[_9338 + ceil32(return_data.size) + 201] = address(_11857)
                    require ext_code.size(address(_9333))
                    staticcall address(_9333).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11857)
                    mem[_9338 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11857)
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11870
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11857) << 64
            else:
                mem[_9355 + _9338 + 164] = 0
                call address(_9333).mem[_9338 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9338 + 168 len _9355 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9338 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9338 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9338 + 232] = mem[idx + _9338 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9338 + 232]
                    if not mem[96]:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11733 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11757 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9338 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9338 + 232] = _11757
                            mem[_9338 + 164] = 68
                            mem[_9338 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + 200 len 28]
                            mem[64] = _9338 + 328
                            mem[_9338 + 264] = 32
                            mem[_9338 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + 328] = mem[s + _9338 + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + 396] = 0
                            call address(_9333).mem[_9338 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + 396] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + 329
                                mem[_9338 + 328] = return_data.size
                                mem[_9338 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + 360] == bool(mem[_9338 + 360])
                                    if not mem[_9338 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9338 + 168] = this.address
                            mem[_9338 + 200] = address(_11733)
                            require ext_code.size(address(_9333))
                            staticcall address(_9333).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11733)
                            mem[_9338 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9338 + ceil32(return_data.size) + 200] = address(_11733)
                            mem[_9338 + ceil32(return_data.size) + 232] = _11757
                            mem[_9338 + ceil32(return_data.size) + 164] = 68
                            mem[_9338 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11733) << 64
                            mem[64] = _9338 + ceil32(return_data.size) + 328
                            mem[_9338 + ceil32(return_data.size) + 264] = 32
                            mem[_9338 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + ceil32(return_data.size) + 328] = mem[s + _9338 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + ceil32(return_data.size) + 396] = 0
                            call address(_9333).mem[_9338 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 396] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9338 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9338 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + ceil32(return_data.size) + 360] == bool(mem[_9338 + ceil32(return_data.size) + 360])
                                    if not mem[_9338 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _11860 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _11871 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                        if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                            mem[_9338 + 200] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                            mem[_9338 + 232] = _11871
                            mem[_9338 + 164] = 68
                            mem[_9338 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + 200 len 28]
                            mem[64] = _9338 + 328
                            mem[_9338 + 264] = 32
                            mem[_9338 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + 328] = mem[s + _9338 + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + 396] = 0
                            call address(_9333).mem[_9338 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + 396] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + 329
                                mem[_9338 + 328] = return_data.size
                                mem[_9338 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + 360] == bool(mem[_9338 + 360])
                                    if not mem[_9338 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9338 + 168] = this.address
                            mem[_9338 + 200] = address(_11860)
                            require ext_code.size(address(_9333))
                            staticcall address(_9333).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_11860)
                            mem[_9338 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9338 + ceil32(return_data.size) + 200] = address(_11860)
                            mem[_9338 + ceil32(return_data.size) + 232] = _11871
                            mem[_9338 + ceil32(return_data.size) + 164] = 68
                            mem[_9338 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11860) << 64
                            mem[64] = _9338 + ceil32(return_data.size) + 328
                            mem[_9338 + ceil32(return_data.size) + 264] = 32
                            mem[_9338 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9333)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9338 + ceil32(return_data.size) + 328] = mem[s + _9338 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9338 + ceil32(return_data.size) + 396] = 0
                            call address(_9333).mem[_9338 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9338 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9338 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + 396] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9338 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9338 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9338 + ceil32(return_data.size) + 360] == bool(mem[_9338 + ceil32(return_data.size) + 360])
                                    if not mem[_9338 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_9338 + 164] = return_data.size
                mem[_9338 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9338 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9338 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9338 + ceil32(return_data.size) + 233] = mem[idx + _9338 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11735 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11760 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9338 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9338 + ceil32(return_data.size) + 233] = _11760
                        mem[_9338 + ceil32(return_data.size) + 165] = 68
                        mem[_9338 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9338 + ceil32(return_data.size) + 329
                        mem[_9338 + ceil32(return_data.size) + 265] = 32
                        mem[_9338 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9333)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9338 + ceil32(return_data.size) + 329] = mem[s + _9338 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9338 + ceil32(return_data.size) + 397] = 0
                        call address(_9333).mem[_9338 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9338 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9338 + (2 * ceil32(return_data.size)) + 330
                            mem[_9338 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9338 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9338 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9338 + ceil32(return_data.size) + 361] == bool(mem[_9338 + ceil32(return_data.size) + 361])
                                if not mem[_9338 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9338 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9338 + ceil32(return_data.size) + 169] = this.address
                    mem[_9338 + ceil32(return_data.size) + 201] = address(_11735)
                    require ext_code.size(address(_9333))
                    staticcall address(_9333).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11735)
                    mem[_9338 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11735)
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11760
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11735) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9338 + 196] == bool(mem[_9338 + 196])
                    if not mem[_9338 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _11863 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _11872 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                    if not mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        mem[_9338 + ceil32(return_data.size) + 201] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                        mem[_9338 + ceil32(return_data.size) + 233] = _11872
                        mem[_9338 + ceil32(return_data.size) + 165] = 68
                        mem[_9338 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9338 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9338 + ceil32(return_data.size) + 329
                        mem[_9338 + ceil32(return_data.size) + 265] = 32
                        mem[_9338 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9333)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9338 + ceil32(return_data.size) + 329] = mem[s + _9338 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9338 + ceil32(return_data.size) + 397] = 0
                        call address(_9333).mem[_9338 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9338 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9338 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9338 + (2 * ceil32(return_data.size)) + 330
                            mem[_9338 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9338 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9338 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9338 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9338 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9338 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9338 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9338 + ceil32(return_data.size) + 361] == bool(mem[_9338 + ceil32(return_data.size) + 361])
                                if not mem[_9338 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9338 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[_9338 + ceil32(return_data.size) + 169] = this.address
                    mem[_9338 + ceil32(return_data.size) + 201] = address(_11863)
                    require ext_code.size(address(_9333))
                    staticcall address(_9333).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_11863)
                    mem[_9338 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11863)
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11872
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11863) << 64
            mem[64] = _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329
            mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9333)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                s = s + 32
                continue 
            mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call address(_9333).mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[64] = _9338 + (4 * ceil32(return_data.size)) + 330
            mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_9338 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_9338 + (4 * ceil32(return_data.size)) + 334] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _9338 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _9338 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_9338 + (4 * ceil32(return_data.size)) + 398]
            if not return_data.size:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 32
            require mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_9338 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[_9338 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_9338 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_9338 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_9338 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_9338 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _9338 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_9bc2b15c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _5177 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
        mem[_5177] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_5177 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
        mem[_5177 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
        mem[s] = _5177
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _5176 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_5176] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = _5176 + 32
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if sub_49f961d6Address == msg.sender:
        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        while idx < _10346:
            if idx >= mem[_5176]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + _5176 + 44 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 128]:
                    _10366 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _10367 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 64
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                    _10396 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] <= test266151307()
                    require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                    _10404 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32]
                    if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _10416 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1
                    mem[_10416] = _10404
                    require _10396 + _10404 + 64 <= _10367 + 32
                    s = 0
                    while s < _10404:
                        mem[s + _10416 + 32] = mem[s + _10366 + _10396 + 64]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_10404) <= _10404:
                        require _10404 >= 128
                        _12960 = mem[_10416 + 32]
                        require mem[_10416 + 32] == mem[_10416 + 44 len 20]
                        _12968 = mem[_10416 + 64]
                        require mem[_10416 + 64] == Mask(32, 224, mem[_10416 + 64])
                        _12984 = mem[_10416 + 96]
                        _12985 = mem[_10416 + 128]
                        require mem[_10416 + 128] <= test266151307()
                        require _10416 + mem[_10416 + 128] + 63 < _10416 + _10404 + 32
                        _13000 = mem[_10416 + mem[_10416 + 128] + 32]
                        if mem[_10416 + mem[_10416 + 128] + 32] > test266151307():
                            revert with 'NH{q', 65
                        _13016 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1
                        mem[_13016] = _13000
                        require _12985 + _13000 + 64 <= _10404 + 32
                        s = 0
                        while s < _13000:
                            mem[s + _13016 + 32] = mem[s + _10416 + _12985 + 64]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13000) <= _13000:
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12960)
                            mem[mem[64] + 36] = Mask(32, 224, _12968)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13000
                            s = 0
                            while s < _13000:
                                mem[s + mem[64] + 132] = mem[s + _13016 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13000) <= _13000:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args address(_12960), Mask(32, 224, _12968), Array(len=_13000, data=mem[mem[64] + 132 len ceil32(_13000)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17976 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18008 = mem[_17976]
                                require mem[_17976] <= test266151307()
                                require _17976 + mem[_17976] + 31 < _17976 + return_data.size
                                _18072 = mem[_17976 + mem[_17976]]
                                if mem[_17976 + mem[_17976]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17976 + mem[_17976]])) + 1 < 0 or _17976 + ceil32(return_data.size) + ceil32(ceil32(mem[_17976 + mem[_17976]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17976 + ceil32(return_data.size) + ceil32(ceil32(mem[_17976 + mem[_17976]])) + 1
                                mem[_17976 + ceil32(return_data.size)] = _18072
                                require _18008 + _18072 + 32 <= return_data.size
                                s = 0
                                while s < _18072:
                                    mem[s + _17976 + ceil32(return_data.size) + 32] = mem[s + _17976 + _18008 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18072) > _18072:
                                    mem[_18072 + _17976 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13000 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args address(_12960), Mask(32, 224, _12968), Array(len=_13000, data=mem[mem[64] + 132 len ceil32(_13000)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17977 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18009 = mem[_17977]
                                require mem[_17977] <= test266151307()
                                require _17977 + mem[_17977] + 31 < _17977 + return_data.size
                                _18073 = mem[_17977 + mem[_17977]]
                                if mem[_17977 + mem[_17977]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17977 + mem[_17977]])) + 1 < 0 or _17977 + ceil32(return_data.size) + ceil32(ceil32(mem[_17977 + mem[_17977]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17977 + ceil32(return_data.size) + ceil32(ceil32(mem[_17977 + mem[_17977]])) + 1
                                mem[_17977 + ceil32(return_data.size)] = _18073
                                require _18009 + _18073 + 32 <= return_data.size
                                s = 0
                                while s < _18073:
                                    mem[s + _17977 + ceil32(return_data.size) + 32] = mem[s + _17977 + _18009 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18073) > _18073:
                                    mem[_18073 + _17977 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13000 + _13016 + 32] = 0
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12960)
                            mem[mem[64] + 36] = Mask(32, 224, _12968)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13000
                            s = 0
                            while s < _13000:
                                mem[s + mem[64] + 132] = mem[s + _13016 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13000) <= _13000:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args address(_12960), Mask(32, 224, _12968), Array(len=_13000, data=mem[mem[64] + 132 len ceil32(_13000)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17978 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18010 = mem[_17978]
                                require mem[_17978] <= test266151307()
                                require _17978 + mem[_17978] + 31 < _17978 + return_data.size
                                _18074 = mem[_17978 + mem[_17978]]
                                if mem[_17978 + mem[_17978]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17978 + mem[_17978]])) + 1 < 0 or _17978 + ceil32(return_data.size) + ceil32(ceil32(mem[_17978 + mem[_17978]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17978 + ceil32(return_data.size) + ceil32(ceil32(mem[_17978 + mem[_17978]])) + 1
                                mem[_17978 + ceil32(return_data.size)] = _18074
                                require _18010 + _18074 + 32 <= return_data.size
                                s = 0
                                while s < _18074:
                                    mem[s + _17978 + ceil32(return_data.size) + 32] = mem[s + _17978 + _18010 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18074) > _18074:
                                    mem[_18074 + _17978 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13000 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args address(_12960), Mask(32, 224, _12968), Array(len=_13000, data=mem[mem[64] + 132 len ceil32(_13000)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17979 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18011 = mem[_17979]
                                require mem[_17979] <= test266151307()
                                require _17979 + mem[_17979] + 31 < _17979 + return_data.size
                                _18075 = mem[_17979 + mem[_17979]]
                                if mem[_17979 + mem[_17979]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17979 + mem[_17979]])) + 1 < 0 or _17979 + ceil32(return_data.size) + ceil32(ceil32(mem[_17979 + mem[_17979]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17979 + ceil32(return_data.size) + ceil32(ceil32(mem[_17979 + mem[_17979]])) + 1
                                mem[_17979 + ceil32(return_data.size)] = _18075
                                require _18011 + _18075 + 32 <= return_data.size
                                s = 0
                                while s < _18075:
                                    mem[s + _17979 + ceil32(return_data.size) + 32] = mem[s + _17979 + _18011 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18075) > _18075:
                                    mem[_18075 + _17979 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_10404 + _10416 + 32] = 0
                        require _10404 >= 128
                        _12961 = mem[_10416 + 32]
                        require mem[_10416 + 32] == mem[_10416 + 44 len 20]
                        _12969 = mem[_10416 + 64]
                        require mem[_10416 + 64] == Mask(32, 224, mem[_10416 + 64])
                        _12986 = mem[_10416 + 96]
                        _12987 = mem[_10416 + 128]
                        require mem[_10416 + 128] <= test266151307()
                        require _10416 + mem[_10416 + 128] + 63 < _10416 + _10404 + 32
                        _13001 = mem[_10416 + mem[_10416 + 128] + 32]
                        if mem[_10416 + mem[_10416 + 128] + 32] > test266151307():
                            revert with 'NH{q', 65
                        _13017 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_10416 + mem[_10416 + 128] + 32])) + 1
                        mem[_13017] = _13001
                        require _12987 + _13001 + 64 <= _10404 + 32
                        s = 0
                        while s < _13001:
                            mem[s + _13017 + 32] = mem[s + _10416 + _12987 + 64]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13001) <= _13001:
                            _15450 = mem[64]
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12961)
                            mem[mem[64] + 36] = Mask(32, 224, _12969)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13001
                            s = 0
                            while s < _13001:
                                mem[s + mem[64] + 132] = mem[s + _13017 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13001) <= _13001:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12986 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13001) + _15450 + -mem[64] + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17980 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18012 = mem[_17980]
                                require mem[_17980] <= test266151307()
                                require _17980 + mem[_17980] + 31 < _17980 + return_data.size
                                _18076 = mem[_17980 + mem[_17980]]
                                if mem[_17980 + mem[_17980]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17980 + mem[_17980]])) + 1 < 0 or _17980 + ceil32(return_data.size) + ceil32(ceil32(mem[_17980 + mem[_17980]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17980 + ceil32(return_data.size) + ceil32(ceil32(mem[_17980 + mem[_17980]])) + 1
                                mem[_17980 + ceil32(return_data.size)] = _18076
                                require _18012 + _18076 + 32 <= return_data.size
                                s = 0
                                while s < _18076:
                                    mem[s + _17980 + ceil32(return_data.size) + 32] = mem[s + _17980 + _18012 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18076) > _18076:
                                    mem[_18076 + _17980 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13001 + _15450 + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12986 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13001) + _15450 + -mem[64] + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17981 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18013 = mem[_17981]
                                require mem[_17981] <= test266151307()
                                require _17981 + mem[_17981] + 31 < _17981 + return_data.size
                                _18077 = mem[_17981 + mem[_17981]]
                                if mem[_17981 + mem[_17981]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17981 + mem[_17981]])) + 1 < 0 or _17981 + ceil32(return_data.size) + ceil32(ceil32(mem[_17981 + mem[_17981]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17981 + ceil32(return_data.size) + ceil32(ceil32(mem[_17981 + mem[_17981]])) + 1
                                mem[_17981 + ceil32(return_data.size)] = _18077
                                require _18013 + _18077 + 32 <= return_data.size
                                s = 0
                                while s < _18077:
                                    mem[s + _17981 + ceil32(return_data.size) + 32] = mem[s + _17981 + _18013 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18077) > _18077:
                                    mem[_18077 + _17981 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13001 + _13017 + 32] = 0
                            _15451 = mem[64]
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12961)
                            mem[mem[64] + 36] = Mask(32, 224, _12969)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13001
                            s = 0
                            while s < _13001:
                                mem[s + mem[64] + 132] = mem[s + _13017 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13001) <= _13001:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12986 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13001) + _15451 + -mem[64] + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17982 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18014 = mem[_17982]
                                require mem[_17982] <= test266151307()
                                require _17982 + mem[_17982] + 31 < _17982 + return_data.size
                                _18078 = mem[_17982 + mem[_17982]]
                                if mem[_17982 + mem[_17982]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17982 + mem[_17982]])) + 1 < 0 or _17982 + ceil32(return_data.size) + ceil32(ceil32(mem[_17982 + mem[_17982]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17982 + ceil32(return_data.size) + ceil32(ceil32(mem[_17982 + mem[_17982]])) + 1
                                mem[_17982 + ceil32(return_data.size)] = _18078
                                require _18014 + _18078 + 32 <= return_data.size
                                s = 0
                                while s < _18078:
                                    mem[s + _17982 + ceil32(return_data.size) + 32] = mem[s + _17982 + _18014 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18078) > _18078:
                                    mem[_18078 + _17982 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13001 + _15451 + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12986 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13001) + _15451 + -mem[64] + 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17983 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18015 = mem[_17983]
                                require mem[_17983] <= test266151307()
                                require _17983 + mem[_17983] + 31 < _17983 + return_data.size
                                _18079 = mem[_17983 + mem[_17983]]
                                if mem[_17983 + mem[_17983]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17983 + mem[_17983]])) + 1 < 0 or _17983 + ceil32(return_data.size) + ceil32(ceil32(mem[_17983 + mem[_17983]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17983 + ceil32(return_data.size) + ceil32(ceil32(mem[_17983 + mem[_17983]])) + 1
                                mem[_17983 + ceil32(return_data.size)] = _18079
                                require _18015 + _18079 + 32 <= return_data.size
                                s = 0
                                while s < _18079:
                                    mem[s + _17983 + ceil32(return_data.size) + 32] = mem[s + _17983 + _18015 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18079) > _18079:
                                    mem[_18079 + _17983 + ceil32(return_data.size) + 32] = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _10368 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _10369 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 128
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                _10397 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 76 len 20]
                _10405 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] <= test266151307()
                require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                _10408 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32]
                if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32] > test266151307():
                    revert with 'NH{q', 65
                _10418 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1
                mem[_10418] = _10408
                require _10405 + _10408 + 64 <= _10369 + 32
                s = 0
                while s < _10408:
                    mem[s + _10418 + 32] = mem[s + _10368 + _10405 + 64]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_10408) <= _10408:
                    _12936 = mem[_10368 + 128]
                    require mem[_10368 + 128] <= test266151307()
                    require _10368 + mem[_10368 + 128] + 63 < _10368 + _10369 + 32
                    _12952 = mem[_10368 + mem[_10368 + 128] + 32]
                    if mem[_10368 + mem[_10368 + 128] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _12976 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1
                    mem[_12976] = _12952
                    require _12936 + _12952 + 64 <= _10369 + 32
                    s = 0
                    while s < _12952:
                        mem[s + _12976 + 32] = mem[s + _10368 + _12936 + 64]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12952) <= _12952:
                        mem[mem[64] + 4] = address(_10397)
                        require ext_code.size(address(stor103.field_0))
                        staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                                gas gas_remaining wei
                               args address(_10397)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15500] == bool(mem[_15500])
                        if not mem[_15500]:
                            revert with 0, 'Invalid after adapter verification!'
                        _15568 = mem[64]
                        mem[mem[64] + 36] = 32
                        mem[mem[64] + 68] = _12952
                        s = 0
                        while s < _12952:
                            mem[s + mem[64] + 100] = mem[s + _12976 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_12952) <= _12952:
                            _17888 = mem[64]
                            mem[mem[64]] = ceil32(_12952) + 68
                            mem[64] = ceil32(_12952) + mem[64] + 100
                            _17944 = mem[_10418]
                            s = 0
                            while s < _17944:
                                mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _10418 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_17944) <= _17944:
                                mem[_17888 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15568 + 100 len _17944])) or mem[_17888 + 36 len 28]
                                _20408 = mem[_17888]
                                s = 0
                                while s < _20408:
                                    mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _17888 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_20408) <= _20408:
                                    delegate address(_10397).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _20408 + ceil32(_12952) + _15568 + -mem[64] + 96]
                                    if not return_data.size:
                                        if delegate.return_code:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            idx = idx + 1
                                            continue 
                                        _22392 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        _22648 = mem[96]
                                        mem[mem[64] + 36] = mem[96]
                                        idx = 0
                                        while idx < _22648:
                                            mem[idx + _22392 + 68] = mem[idx + 128]
                                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_22648) > _22648:
                                            mem[_22648 + _22392 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len ceil32(_22648) + _22392 + -mem[64] + 68
                                    _22264 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_22264] = return_data.size
                                    mem[_22264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22393 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = return_data.size
                                    idx = 0
                                    while idx < return_data.size:
                                        mem[idx + _22393 + 68] = mem[idx + _22264 + 32]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(return_data.size) > return_data.size:
                                        mem[return_data.size + _22393 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(return_data.size) + _22393 + -mem[64] + 68
                                mem[_20408 + ceil32(_12952) + _15568 + 100] = 0
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20408 + ceil32(_12952) + _15568 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22394 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22650 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22650:
                                        mem[idx + _22394 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22650) > _22650:
                                        mem[_22650 + _22394 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22650) + _22394 + -mem[64] + 68
                                _22265 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22265] = return_data.size
                                mem[_22265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22395 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22395 + 68] = mem[idx + _22265 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22395 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22395 + -mem[64] + 68
                            mem[_17944 + ceil32(_12952) + _15568 + 100] = 0
                            mem[_17888 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15568 + 100 len _17944])) or mem[_17888 + 36 len 28]
                            _20409 = mem[_17888]
                            s = 0
                            while s < _20409:
                                mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _17888 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20409) <= _20409:
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20409 + ceil32(_12952) + _15568 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22396 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22652 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22652:
                                        mem[idx + _22396 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22652) > _22652:
                                        mem[_22652 + _22396 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22652) + _22396 + -mem[64] + 68
                                _22266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22266] = return_data.size
                                mem[_22266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22397 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22397 + 68] = mem[idx + _22266 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22397 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22397 + -mem[64] + 68
                            mem[_20409 + ceil32(_12952) + _15568 + 100] = 0
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20409 + ceil32(_12952) + _15568 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22654 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22654:
                                    mem[idx + _22398 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22654) > _22654:
                                    mem[_22654 + _22398 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22654) + _22398 + -mem[64] + 68
                            _22267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22267] = return_data.size
                            mem[_22267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22399 + 68] = mem[idx + _22267 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22399 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22399 + -mem[64] + 68
                        mem[_12952 + mem[64] + 100] = 0
                        _17889 = mem[64]
                        mem[mem[64]] = ceil32(_12952) + 68
                        mem[64] = ceil32(_12952) + mem[64] + 100
                        _17945 = mem[_10418]
                        s = 0
                        while s < _17945:
                            mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17945) <= _17945:
                            mem[_17889 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15568 + 100 len _17945])) or mem[_17889 + 36 len 28]
                            _20410 = mem[_17889]
                            s = 0
                            while s < _20410:
                                mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _17889 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20410) <= _20410:
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20410 + ceil32(_12952) + _15568 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22400 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22656 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22656:
                                        mem[idx + _22400 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22656) > _22656:
                                        mem[_22656 + _22400 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22656) + _22400 + -mem[64] + 68
                                _22268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22268] = return_data.size
                                mem[_22268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22401 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22401 + 68] = mem[idx + _22268 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22401 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22401 + -mem[64] + 68
                            mem[_20410 + ceil32(_12952) + _15568 + 100] = 0
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20410 + ceil32(_12952) + _15568 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22658 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22658:
                                    mem[idx + _22402 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22658) > _22658:
                                    mem[_22658 + _22402 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22658) + _22402 + -mem[64] + 68
                            _22269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22269] = return_data.size
                            mem[_22269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22403 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22403 + 68] = mem[idx + _22269 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22403 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22403 + -mem[64] + 68
                        mem[_17945 + ceil32(_12952) + _15568 + 100] = 0
                        mem[_17889 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15568 + 100 len _17945])) or mem[_17889 + 36 len 28]
                        _20411 = mem[_17889]
                        s = 0
                        while s < _20411:
                            mem[s + ceil32(_12952) + _15568 + 100] = mem[s + _17889 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20411) <= _20411:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20411 + ceil32(_12952) + _15568 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22404 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22660 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22660:
                                    mem[idx + _22404 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22660) > _22660:
                                    mem[_22660 + _22404 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22660) + _22404 + -mem[64] + 68
                            _22270 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22270] = return_data.size
                            mem[_22270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22405 + 68] = mem[idx + _22270 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22405 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22405 + -mem[64] + 68
                        mem[_20411 + ceil32(_12952) + _15568 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20411 + ceil32(_12952) + _15568 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22406 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22662 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22662:
                                mem[idx + _22406 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22662) > _22662:
                                mem[_22662 + _22406 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22662) + _22406 + -mem[64] + 68
                        _22271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22271] = return_data.size
                        mem[_22271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22407 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22407 + 68] = mem[idx + _22271 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22407 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22407 + -mem[64] + 68
                    mem[_12952 + _12976 + 32] = 0
                    mem[mem[64] + 4] = address(_10397)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10397)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15501] == bool(mem[_15501])
                    if not mem[_15501]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15570 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12952
                    s = 0
                    while s < _12952:
                        mem[s + mem[64] + 100] = mem[s + _12976 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12952) <= _12952:
                        _17890 = mem[64]
                        mem[mem[64]] = ceil32(_12952) + 68
                        mem[64] = ceil32(_12952) + mem[64] + 100
                        _17946 = mem[_10418]
                        s = 0
                        while s < _17946:
                            mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17946) <= _17946:
                            mem[_17890 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15570 + 100 len _17946])) or mem[_17890 + 36 len 28]
                            _20412 = mem[_17890]
                            s = 0
                            while s < _20412:
                                mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _17890 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20412) <= _20412:
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20412 + ceil32(_12952) + _15570 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22408 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22664 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22664:
                                        mem[idx + _22408 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22664) > _22664:
                                        mem[_22664 + _22408 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22664) + _22408 + -mem[64] + 68
                                _22272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22272] = return_data.size
                                mem[_22272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22409 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22409 + 68] = mem[idx + _22272 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22409 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22409 + -mem[64] + 68
                            mem[_20412 + ceil32(_12952) + _15570 + 100] = 0
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20412 + ceil32(_12952) + _15570 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22666 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22666:
                                    mem[idx + _22410 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22666) > _22666:
                                    mem[_22666 + _22410 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22666) + _22410 + -mem[64] + 68
                            _22273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22273] = return_data.size
                            mem[_22273 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22411 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22411 + 68] = mem[idx + _22273 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22411 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22411 + -mem[64] + 68
                        mem[_17946 + ceil32(_12952) + _15570 + 100] = 0
                        mem[_17890 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15570 + 100 len _17946])) or mem[_17890 + 36 len 28]
                        _20413 = mem[_17890]
                        s = 0
                        while s < _20413:
                            mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _17890 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20413) <= _20413:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20413 + ceil32(_12952) + _15570 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22668 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22668:
                                    mem[idx + _22412 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22668) > _22668:
                                    mem[_22668 + _22412 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22668) + _22412 + -mem[64] + 68
                            _22274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22274] = return_data.size
                            mem[_22274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22413 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22413 + 68] = mem[idx + _22274 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22413 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22413 + -mem[64] + 68
                        mem[_20413 + ceil32(_12952) + _15570 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20413 + ceil32(_12952) + _15570 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22414 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22670 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22670:
                                mem[idx + _22414 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22670) > _22670:
                                mem[_22670 + _22414 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22670) + _22414 + -mem[64] + 68
                        _22275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22275] = return_data.size
                        mem[_22275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22415 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22415 + 68] = mem[idx + _22275 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22415 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22415 + -mem[64] + 68
                    mem[_12952 + mem[64] + 100] = 0
                    _17891 = mem[64]
                    mem[mem[64]] = ceil32(_12952) + 68
                    mem[64] = ceil32(_12952) + mem[64] + 100
                    _17947 = mem[_10418]
                    s = 0
                    while s < _17947:
                        mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17947) <= _17947:
                        mem[_17891 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15570 + 100 len _17947])) or mem[_17891 + 36 len 28]
                        _20414 = mem[_17891]
                        s = 0
                        while s < _20414:
                            mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _17891 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20414) <= _20414:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20414 + ceil32(_12952) + _15570 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22672 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22672:
                                    mem[idx + _22416 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22672) > _22672:
                                    mem[_22672 + _22416 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22672) + _22416 + -mem[64] + 68
                            _22276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22276] = return_data.size
                            mem[_22276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22417 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22417 + 68] = mem[idx + _22276 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22417 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22417 + -mem[64] + 68
                        mem[_20414 + ceil32(_12952) + _15570 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20414 + ceil32(_12952) + _15570 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22418 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22674 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22674:
                                mem[idx + _22418 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22674) > _22674:
                                mem[_22674 + _22418 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22674) + _22418 + -mem[64] + 68
                        _22277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22277] = return_data.size
                        mem[_22277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22419 + 68] = mem[idx + _22277 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22419 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22419 + -mem[64] + 68
                    mem[_17947 + ceil32(_12952) + _15570 + 100] = 0
                    mem[_17891 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15570 + 100 len _17947])) or mem[_17891 + 36 len 28]
                    _20415 = mem[_17891]
                    s = 0
                    while s < _20415:
                        mem[s + ceil32(_12952) + _15570 + 100] = mem[s + _17891 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20415) <= _20415:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20415 + ceil32(_12952) + _15570 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22420 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22676 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22676:
                                mem[idx + _22420 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22676) > _22676:
                                mem[_22676 + _22420 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22676) + _22420 + -mem[64] + 68
                        _22278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22278] = return_data.size
                        mem[_22278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22421 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22421 + 68] = mem[idx + _22278 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22421 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22421 + -mem[64] + 68
                    mem[_20415 + ceil32(_12952) + _15570 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20415 + ceil32(_12952) + _15570 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22422 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22678 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22678:
                            mem[idx + _22422 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22678) > _22678:
                            mem[_22678 + _22422 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22678) + _22422 + -mem[64] + 68
                    _22279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22279] = return_data.size
                    mem[_22279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22423 + 68] = mem[idx + _22279 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22423 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22423 + -mem[64] + 68
                mem[_10408 + _10418 + 32] = 0
                _12937 = mem[_10368 + 128]
                require mem[_10368 + 128] <= test266151307()
                require _10368 + mem[_10368 + 128] + 63 < _10368 + _10369 + 32
                _12953 = mem[_10368 + mem[_10368 + 128] + 32]
                if mem[_10368 + mem[_10368 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _12977 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10368 + mem[_10368 + 128] + 32])) + 1
                mem[_12977] = _12953
                require _12937 + _12953 + 64 <= _10369 + 32
                s = 0
                while s < _12953:
                    mem[s + _12977 + 32] = mem[s + _10368 + _12937 + 64]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12953) <= _12953:
                    mem[mem[64] + 4] = address(_10397)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10397)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15502] == bool(mem[_15502])
                    if not mem[_15502]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15572 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12953
                    s = 0
                    while s < _12953:
                        mem[s + mem[64] + 100] = mem[s + _12977 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12953) <= _12953:
                        _17892 = mem[64]
                        mem[mem[64]] = ceil32(_12953) + 68
                        mem[64] = ceil32(_12953) + mem[64] + 100
                        _17948 = mem[_10418]
                        s = 0
                        while s < _17948:
                            mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17948) <= _17948:
                            mem[_17892 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15572 + 100 len _17948])) or mem[_17892 + 36 len 28]
                            _20416 = mem[_17892]
                            s = 0
                            while s < _20416:
                                mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _17892 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20416) <= _20416:
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20416 + ceil32(_12953) + _15572 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22424 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22680 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22680:
                                        mem[idx + _22424 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22680) > _22680:
                                        mem[_22680 + _22424 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22680) + _22424 + -mem[64] + 68
                                _22280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22280] = return_data.size
                                mem[_22280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22425 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22425 + 68] = mem[idx + _22280 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22425 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22425 + -mem[64] + 68
                            mem[_20416 + ceil32(_12953) + _15572 + 100] = 0
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20416 + ceil32(_12953) + _15572 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22426 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22682 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22682:
                                    mem[idx + _22426 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22682) > _22682:
                                    mem[_22682 + _22426 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22682) + _22426 + -mem[64] + 68
                            _22281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22281] = return_data.size
                            mem[_22281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22427 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22427 + 68] = mem[idx + _22281 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22427 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22427 + -mem[64] + 68
                        mem[_17948 + ceil32(_12953) + _15572 + 100] = 0
                        mem[_17892 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15572 + 100 len _17948])) or mem[_17892 + 36 len 28]
                        _20417 = mem[_17892]
                        s = 0
                        while s < _20417:
                            mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _17892 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20417) <= _20417:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20417 + ceil32(_12953) + _15572 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22428 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22684 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22684:
                                    mem[idx + _22428 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22684) > _22684:
                                    mem[_22684 + _22428 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22684) + _22428 + -mem[64] + 68
                            _22282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22282] = return_data.size
                            mem[_22282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22429 + 68] = mem[idx + _22282 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22429 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22429 + -mem[64] + 68
                        mem[_20417 + ceil32(_12953) + _15572 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20417 + ceil32(_12953) + _15572 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22686 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22686:
                                mem[idx + _22430 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22686) > _22686:
                                mem[_22686 + _22430 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22686) + _22430 + -mem[64] + 68
                        _22283 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22283] = return_data.size
                        mem[_22283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22431 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22431 + 68] = mem[idx + _22283 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22431 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22431 + -mem[64] + 68
                    mem[_12953 + mem[64] + 100] = 0
                    _17893 = mem[64]
                    mem[mem[64]] = ceil32(_12953) + 68
                    mem[64] = ceil32(_12953) + mem[64] + 100
                    _17949 = mem[_10418]
                    s = 0
                    while s < _17949:
                        mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17949) <= _17949:
                        mem[_17893 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15572 + 100 len _17949])) or mem[_17893 + 36 len 28]
                        _20418 = mem[_17893]
                        s = 0
                        while s < _20418:
                            mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _17893 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20418) <= _20418:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20418 + ceil32(_12953) + _15572 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22432 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22688 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22688:
                                    mem[idx + _22432 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22688) > _22688:
                                    mem[_22688 + _22432 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22688) + _22432 + -mem[64] + 68
                            _22284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22284] = return_data.size
                            mem[_22284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22433 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22433 + 68] = mem[idx + _22284 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22433 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22433 + -mem[64] + 68
                        mem[_20418 + ceil32(_12953) + _15572 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20418 + ceil32(_12953) + _15572 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22690 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22690:
                                mem[idx + _22434 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22690) > _22690:
                                mem[_22690 + _22434 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22690) + _22434 + -mem[64] + 68
                        _22285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22285] = return_data.size
                        mem[_22285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22435 + 68] = mem[idx + _22285 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22435 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22435 + -mem[64] + 68
                    mem[_17949 + ceil32(_12953) + _15572 + 100] = 0
                    mem[_17893 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15572 + 100 len _17949])) or mem[_17893 + 36 len 28]
                    _20419 = mem[_17893]
                    s = 0
                    while s < _20419:
                        mem[s + ceil32(_12953) + _15572 + 100] = mem[s + _17893 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20419) <= _20419:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20419 + ceil32(_12953) + _15572 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22692 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22692:
                                mem[idx + _22436 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22692) > _22692:
                                mem[_22692 + _22436 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22692) + _22436 + -mem[64] + 68
                        _22286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22286] = return_data.size
                        mem[_22286 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22437 + 68] = mem[idx + _22286 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22437 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22437 + -mem[64] + 68
                    mem[_20419 + ceil32(_12953) + _15572 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20419 + ceil32(_12953) + _15572 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22438 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22694 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22694:
                            mem[idx + _22438 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22694) > _22694:
                            mem[_22694 + _22438 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22694) + _22438 + -mem[64] + 68
                    _22287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22287] = return_data.size
                    mem[_22287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22439 + 68] = mem[idx + _22287 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22439 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22439 + -mem[64] + 68
                mem[_12953 + _12977 + 32] = 0
                mem[mem[64] + 4] = address(_10397)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10397)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15503] == bool(mem[_15503])
                if not mem[_15503]:
                    revert with 0, 'Invalid after adapter verification!'
                _15574 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12953
                s = 0
                while s < _12953:
                    mem[s + mem[64] + 100] = mem[s + _12977 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12953) <= _12953:
                    _17894 = mem[64]
                    mem[mem[64]] = ceil32(_12953) + 68
                    mem[64] = ceil32(_12953) + mem[64] + 100
                    _17950 = mem[_10418]
                    s = 0
                    while s < _17950:
                        mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17950) <= _17950:
                        mem[_17894 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15574 + 100 len _17950])) or mem[_17894 + 36 len 28]
                        _20420 = mem[_17894]
                        s = 0
                        while s < _20420:
                            mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _17894 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20420) <= _20420:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20420 + ceil32(_12953) + _15574 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22440 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22696 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22696:
                                    mem[idx + _22440 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22696) > _22696:
                                    mem[_22696 + _22440 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22696) + _22440 + -mem[64] + 68
                            _22288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22288] = return_data.size
                            mem[_22288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22441 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22441 + 68] = mem[idx + _22288 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22441 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22441 + -mem[64] + 68
                        mem[_20420 + ceil32(_12953) + _15574 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20420 + ceil32(_12953) + _15574 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22442 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22698 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22698:
                                mem[idx + _22442 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22698) > _22698:
                                mem[_22698 + _22442 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22698) + _22442 + -mem[64] + 68
                        _22289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22289] = return_data.size
                        mem[_22289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22443 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22443 + 68] = mem[idx + _22289 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22443 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22443 + -mem[64] + 68
                    mem[_17950 + ceil32(_12953) + _15574 + 100] = 0
                    mem[_17894 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15574 + 100 len _17950])) or mem[_17894 + 36 len 28]
                    _20421 = mem[_17894]
                    s = 0
                    while s < _20421:
                        mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _17894 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20421) <= _20421:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20421 + ceil32(_12953) + _15574 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22700 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22700:
                                mem[idx + _22444 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22700) > _22700:
                                mem[_22700 + _22444 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22700) + _22444 + -mem[64] + 68
                        _22290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22290] = return_data.size
                        mem[_22290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22445 + 68] = mem[idx + _22290 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22445 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22445 + -mem[64] + 68
                    mem[_20421 + ceil32(_12953) + _15574 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20421 + ceil32(_12953) + _15574 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22446 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22702 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22702:
                            mem[idx + _22446 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22702) > _22702:
                            mem[_22702 + _22446 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22702) + _22446 + -mem[64] + 68
                    _22291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22291] = return_data.size
                    mem[_22291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22447 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22447 + 68] = mem[idx + _22291 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22447 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22447 + -mem[64] + 68
                mem[_12953 + mem[64] + 100] = 0
                _17895 = mem[64]
                mem[mem[64]] = ceil32(_12953) + 68
                mem[64] = ceil32(_12953) + mem[64] + 100
                _17951 = mem[_10418]
                s = 0
                while s < _17951:
                    mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _10418 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17951) <= _17951:
                    mem[_17895 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15574 + 100 len _17951])) or mem[_17895 + 36 len 28]
                    _20422 = mem[_17895]
                    s = 0
                    while s < _20422:
                        mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _17895 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20422) <= _20422:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20422 + ceil32(_12953) + _15574 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22448 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22704 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22704:
                                mem[idx + _22448 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22704) > _22704:
                                mem[_22704 + _22448 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22704) + _22448 + -mem[64] + 68
                        _22292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22292] = return_data.size
                        mem[_22292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22449 + 68] = mem[idx + _22292 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22449 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22449 + -mem[64] + 68
                    mem[_20422 + ceil32(_12953) + _15574 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20422 + ceil32(_12953) + _15574 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22450 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22706 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22706:
                            mem[idx + _22450 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22706) > _22706:
                            mem[_22706 + _22450 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22706) + _22450 + -mem[64] + 68
                    _22293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22293] = return_data.size
                    mem[_22293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22451 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22451 + 68] = mem[idx + _22293 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22451 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22451 + -mem[64] + 68
                mem[_17951 + ceil32(_12953) + _15574 + 100] = 0
                mem[_17895 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15574 + 100 len _17951])) or mem[_17895 + 36 len 28]
                _20423 = mem[_17895]
                s = 0
                while s < _20423:
                    mem[s + ceil32(_12953) + _15574 + 100] = mem[s + _17895 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20423) <= _20423:
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20423 + ceil32(_12953) + _15574 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22708 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22708:
                            mem[idx + _22452 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22708) > _22708:
                            mem[_22708 + _22452 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22708) + _22452 + -mem[64] + 68
                    _22294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22294] = return_data.size
                    mem[_22294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22453 + 68] = mem[idx + _22294 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22453 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22453 + -mem[64] + 68
                mem[_20423 + ceil32(_12953) + _15574 + 100] = 0
                delegate address(_10397).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20423 + ceil32(_12953) + _15574 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22710 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22710:
                        mem[idx + _22454 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22710) > _22710:
                        mem[_22710 + _22454 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22710) + _22454 + -mem[64] + 68
                _22295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22295] = return_data.size
                mem[_22295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22455 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22455 + 68] = mem[idx + _22295 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22455 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22455 + -mem[64] + 68
            if idx >= mem[_5176]:
                revert with 'NH{q', 50
            stor104 = mem[(32 * idx) + _5176 + 44 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 128]:
                _10382 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _10383 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 64
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                _10400 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] <= test266151307()
                require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                _10409 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32]
                if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32] > test266151307():
                    revert with 'NH{q', 65
                _10419 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1
                mem[_10419] = _10409
                require _10400 + _10409 + 64 <= _10383 + 32
                s = 0
                while s < _10409:
                    mem[s + _10419 + 32] = mem[s + _10382 + _10400 + 64]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_10409) <= _10409:
                    require _10409 >= 128
                    _12962 = mem[_10419 + 32]
                    require mem[_10419 + 32] == mem[_10419 + 44 len 20]
                    _12970 = mem[_10419 + 64]
                    require mem[_10419 + 64] == Mask(32, 224, mem[_10419 + 64])
                    _12988 = mem[_10419 + 96]
                    _12989 = mem[_10419 + 128]
                    require mem[_10419 + 128] <= test266151307()
                    require _10419 + mem[_10419 + 128] + 63 < _10419 + _10409 + 32
                    _13002 = mem[_10419 + mem[_10419 + 128] + 32]
                    if mem[_10419 + mem[_10419 + 128] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _13018 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1
                    mem[_13018] = _13002
                    require _12989 + _13002 + 64 <= _10409 + 32
                    s = 0
                    while s < _13002:
                        mem[s + _13018 + 32] = mem[s + _10419 + _12989 + 64]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13002) <= _13002:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12962)
                        mem[mem[64] + 36] = Mask(32, 224, _12970)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13002
                        s = 0
                        while s < _13002:
                            mem[s + mem[64] + 132] = mem[s + _13018 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13002) <= _13002:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12988 wei
                                 gas gas_remaining wei
                                args address(_12962), Mask(32, 224, _12970), Array(len=_13002, data=mem[mem[64] + 132 len ceil32(_13002)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17984 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18024 = mem[_17984]
                            require mem[_17984] <= test266151307()
                            require _17984 + mem[_17984] + 31 < _17984 + return_data.size
                            _18144 = mem[_17984 + mem[_17984]]
                            if mem[_17984 + mem[_17984]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(ceil32(mem[_17984 + mem[_17984]])) + 1 < 0 or _17984 + ceil32(return_data.size) + ceil32(ceil32(mem[_17984 + mem[_17984]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _17984 + ceil32(return_data.size) + ceil32(ceil32(mem[_17984 + mem[_17984]])) + 1
                            mem[_17984 + ceil32(return_data.size)] = _18144
                            require _18024 + _18144 + 32 <= return_data.size
                            s = 0
                            while s < _18144:
                                mem[s + _17984 + ceil32(return_data.size) + 32] = mem[s + _17984 + _18024 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_18144) > _18144:
                                mem[_18144 + _17984 + ceil32(return_data.size) + 32] = 0
                            if ceil32(_18144) == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = ceil32(_18144) + 1
                            continue 
                        mem[_13002 + mem[64] + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _12988 wei
                             gas gas_remaining wei
                            args address(_12962), Mask(32, 224, _12970), Array(len=_13002, data=mem[mem[64] + 132 len ceil32(_13002)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17985 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18025 = mem[_17985]
                        require mem[_17985] <= test266151307()
                        require _17985 + mem[_17985] + 31 < _17985 + return_data.size
                        _18145 = mem[_17985 + mem[_17985]]
                        if mem[_17985 + mem[_17985]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_17985 + mem[_17985]])) + 1 < 0 or _17985 + ceil32(return_data.size) + ceil32(ceil32(mem[_17985 + mem[_17985]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _17985 + ceil32(return_data.size) + ceil32(ceil32(mem[_17985 + mem[_17985]])) + 1
                        mem[_17985 + ceil32(return_data.size)] = _18145
                        require _18025 + _18145 + 32 <= return_data.size
                        s = 0
                        while s < _18145:
                            mem[s + _17985 + ceil32(return_data.size) + 32] = mem[s + _17985 + _18025 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18145) > _18145:
                            mem[_18145 + _17985 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18145) == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18145) + 1
                        continue 
                    mem[_13002 + _13018 + 32] = 0
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_12962)
                    mem[mem[64] + 36] = Mask(32, 224, _12970)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13002
                    s = 0
                    while s < _13002:
                        mem[s + mem[64] + 132] = mem[s + _13018 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13002) <= _13002:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _12988 wei
                             gas gas_remaining wei
                            args address(_12962), Mask(32, 224, _12970), Array(len=_13002, data=mem[mem[64] + 132 len ceil32(_13002)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17986 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18026 = mem[_17986]
                        require mem[_17986] <= test266151307()
                        require _17986 + mem[_17986] + 31 < _17986 + return_data.size
                        _18146 = mem[_17986 + mem[_17986]]
                        if mem[_17986 + mem[_17986]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_17986 + mem[_17986]])) + 1 < 0 or _17986 + ceil32(return_data.size) + ceil32(ceil32(mem[_17986 + mem[_17986]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _17986 + ceil32(return_data.size) + ceil32(ceil32(mem[_17986 + mem[_17986]])) + 1
                        mem[_17986 + ceil32(return_data.size)] = _18146
                        require _18026 + _18146 + 32 <= return_data.size
                        s = 0
                        while s < _18146:
                            mem[s + _17986 + ceil32(return_data.size) + 32] = mem[s + _17986 + _18026 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18146) > _18146:
                            mem[_18146 + _17986 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18146) == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18146) + 1
                        continue 
                    mem[_13002 + mem[64] + 132] = 0
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).0xd098d39a with:
                       value _12988 wei
                         gas gas_remaining wei
                        args address(_12962), Mask(32, 224, _12970), Array(len=_13002, data=mem[mem[64] + 132 len ceil32(_13002)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17987 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18027 = mem[_17987]
                    require mem[_17987] <= test266151307()
                    require _17987 + mem[_17987] + 31 < _17987 + return_data.size
                    _18147 = mem[_17987 + mem[_17987]]
                    if mem[_17987 + mem[_17987]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_17987 + mem[_17987]])) + 1 < 0 or _17987 + ceil32(return_data.size) + ceil32(ceil32(mem[_17987 + mem[_17987]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _17987 + ceil32(return_data.size) + ceil32(ceil32(mem[_17987 + mem[_17987]])) + 1
                    mem[_17987 + ceil32(return_data.size)] = _18147
                    require _18027 + _18147 + 32 <= return_data.size
                    s = 0
                    while s < _18147:
                        mem[s + _17987 + ceil32(return_data.size) + 32] = mem[s + _17987 + _18027 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18147) > _18147:
                        mem[_18147 + _17987 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18147) == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18147) + 1
                    continue 
                mem[_10409 + _10419 + 32] = 0
                require _10409 >= 128
                _12963 = mem[_10419 + 32]
                require mem[_10419 + 32] == mem[_10419 + 44 len 20]
                _12971 = mem[_10419 + 64]
                require mem[_10419 + 64] == Mask(32, 224, mem[_10419 + 64])
                _12990 = mem[_10419 + 96]
                _12991 = mem[_10419 + 128]
                require mem[_10419 + 128] <= test266151307()
                require _10419 + mem[_10419 + 128] + 63 < _10419 + _10409 + 32
                _13003 = mem[_10419 + mem[_10419 + 128] + 32]
                if mem[_10419 + mem[_10419 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _13019 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10419 + mem[_10419 + 128] + 32])) + 1
                mem[_13019] = _13003
                require _12991 + _13003 + 64 <= _10409 + 32
                s = 0
                while s < _13003:
                    mem[s + _13019 + 32] = mem[s + _10419 + _12991 + 64]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_13003) <= _13003:
                    _15462 = mem[64]
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_12963)
                    mem[mem[64] + 36] = Mask(32, 224, _12971)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13003
                    s = 0
                    while s < _13003:
                        mem[s + mem[64] + 132] = mem[s + _13019 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13003) <= _13003:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _12990 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13003) + _15462 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17988 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18028 = mem[_17988]
                        require mem[_17988] <= test266151307()
                        require _17988 + mem[_17988] + 31 < _17988 + return_data.size
                        _18148 = mem[_17988 + mem[_17988]]
                        if mem[_17988 + mem[_17988]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_17988 + mem[_17988]])) + 1 < 0 or _17988 + ceil32(return_data.size) + ceil32(ceil32(mem[_17988 + mem[_17988]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _17988 + ceil32(return_data.size) + ceil32(ceil32(mem[_17988 + mem[_17988]])) + 1
                        mem[_17988 + ceil32(return_data.size)] = _18148
                        require _18028 + _18148 + 32 <= return_data.size
                        s = 0
                        while s < _18148:
                            mem[s + _17988 + ceil32(return_data.size) + 32] = mem[s + _17988 + _18028 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18148) > _18148:
                            mem[_18148 + _17988 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18148) == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18148) + 1
                        continue 
                    mem[_13003 + _15462 + 132] = 0
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).mem[mem[64] len 4] with:
                       value _12990 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_13003) + _15462 + -mem[64] + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17989 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18029 = mem[_17989]
                    require mem[_17989] <= test266151307()
                    require _17989 + mem[_17989] + 31 < _17989 + return_data.size
                    _18149 = mem[_17989 + mem[_17989]]
                    if mem[_17989 + mem[_17989]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_17989 + mem[_17989]])) + 1 < 0 or _17989 + ceil32(return_data.size) + ceil32(ceil32(mem[_17989 + mem[_17989]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _17989 + ceil32(return_data.size) + ceil32(ceil32(mem[_17989 + mem[_17989]])) + 1
                    mem[_17989 + ceil32(return_data.size)] = _18149
                    require _18029 + _18149 + 32 <= return_data.size
                    s = 0
                    while s < _18149:
                        mem[s + _17989 + ceil32(return_data.size) + 32] = mem[s + _17989 + _18029 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18149) > _18149:
                        mem[_18149 + _17989 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18149) == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18149) + 1
                    continue 
                mem[_13003 + _13019 + 32] = 0
                _15463 = mem[64]
                mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_12963)
                mem[mem[64] + 36] = Mask(32, 224, _12971)
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = _13003
                s = 0
                while s < _13003:
                    mem[s + mem[64] + 132] = mem[s + _13019 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_13003) <= _13003:
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).mem[mem[64] len 4] with:
                       value _12990 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_13003) + _15463 + -mem[64] + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17990 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18030 = mem[_17990]
                    require mem[_17990] <= test266151307()
                    require _17990 + mem[_17990] + 31 < _17990 + return_data.size
                    _18150 = mem[_17990 + mem[_17990]]
                    if mem[_17990 + mem[_17990]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_17990 + mem[_17990]])) + 1 < 0 or _17990 + ceil32(return_data.size) + ceil32(ceil32(mem[_17990 + mem[_17990]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _17990 + ceil32(return_data.size) + ceil32(ceil32(mem[_17990 + mem[_17990]])) + 1
                    mem[_17990 + ceil32(return_data.size)] = _18150
                    require _18030 + _18150 + 32 <= return_data.size
                    s = 0
                    while s < _18150:
                        mem[s + _17990 + ceil32(return_data.size) + 32] = mem[s + _17990 + _18030 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18150) > _18150:
                        mem[_18150 + _17990 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18150) == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18150) + 1
                    continue 
                mem[_13003 + _15463 + 132] = 0
                require ext_code.size(address(stor103.field_0))
                call address(stor103.field_0).mem[mem[64] len 4] with:
                   value _12990 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_13003) + _15463 + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _17991 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18031 = mem[_17991]
                require mem[_17991] <= test266151307()
                require _17991 + mem[_17991] + 31 < _17991 + return_data.size
                _18151 = mem[_17991 + mem[_17991]]
                if mem[_17991 + mem[_17991]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_17991 + mem[_17991]])) + 1 < 0 or _17991 + ceil32(return_data.size) + ceil32(ceil32(mem[_17991 + mem[_17991]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _17991 + ceil32(return_data.size) + ceil32(ceil32(mem[_17991 + mem[_17991]])) + 1
                mem[_17991 + ceil32(return_data.size)] = _18151
                require _18031 + _18151 + 32 <= return_data.size
                s = 0
                while s < _18151:
                    mem[s + _17991 + ceil32(return_data.size) + 32] = mem[s + _17991 + _18031 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_18151) > _18151:
                    mem[_18151 + _17991 + ceil32(return_data.size) + 32] = 0
                if ceil32(_18151) == -1:
                    revert with 'NH{q', 17
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = ceil32(_18151) + 1
                continue 
            _10384 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            _10385 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 128
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
            _10401 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 76 len 20]
            _10410 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] <= test266151307()
            require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
            _10414 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32]
            if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32] > test266151307():
                revert with 'NH{q', 65
            _10422 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1
            mem[_10422] = _10414
            require _10410 + _10414 + 64 <= _10385 + 32
            s = 0
            while s < _10414:
                mem[s + _10422 + 32] = mem[s + _10384 + _10410 + 64]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_10414) <= _10414:
                _12938 = mem[_10384 + 128]
                require mem[_10384 + 128] <= test266151307()
                require _10384 + mem[_10384 + 128] + 63 < _10384 + _10385 + 32
                _12954 = mem[_10384 + mem[_10384 + 128] + 32]
                if mem[_10384 + mem[_10384 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _12978 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1
                mem[_12978] = _12954
                require _12938 + _12954 + 64 <= _10385 + 32
                s = 0
                while s < _12954:
                    mem[s + _12978 + 32] = mem[s + _10384 + _12938 + 64]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12954) <= _12954:
                    mem[mem[64] + 4] = address(_10401)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10401)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15508] == bool(mem[_15508])
                    if not mem[_15508]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15584 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12954
                    s = 0
                    while s < _12954:
                        mem[s + mem[64] + 100] = mem[s + _12978 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12954) <= _12954:
                        _17904 = mem[64]
                        mem[mem[64]] = ceil32(_12954) + 68
                        mem[64] = ceil32(_12954) + mem[64] + 100
                        _17952 = mem[_10422]
                        s = 0
                        while s < _17952:
                            mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _10422 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17952) <= _17952:
                            mem[_17904 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15584 + 100 len _17952])) or mem[_17904 + 36 len 28]
                            _20424 = mem[_17904]
                            s = 0
                            while s < _20424:
                                mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _17904 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20424) <= _20424:
                                delegate address(_10401).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20424 + ceil32(_12954) + _15584 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22456 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22712 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22712:
                                        mem[idx + _22456 + 68] = mem[idx + 128]
                                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22712) > _22712:
                                        mem[_22712 + _22456 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22712) + _22456 + -mem[64] + 68
                                _22296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22296] = return_data.size
                                mem[_22296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22457 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22457 + 68] = mem[idx + _22296 + 32]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22457 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22457 + -mem[64] + 68
                            mem[_20424 + ceil32(_12954) + _15584 + 100] = 0
                            delegate address(_10401).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20424 + ceil32(_12954) + _15584 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22458 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22714 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22714:
                                    mem[idx + _22458 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22714) > _22714:
                                    mem[_22714 + _22458 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22714) + _22458 + -mem[64] + 68
                            _22297 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22297] = return_data.size
                            mem[_22297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22459 + 68] = mem[idx + _22297 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22459 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22459 + -mem[64] + 68
                        mem[_17952 + ceil32(_12954) + _15584 + 100] = 0
                        mem[_17904 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15584 + 100 len _17952])) or mem[_17904 + 36 len 28]
                        _20425 = mem[_17904]
                        s = 0
                        while s < _20425:
                            mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _17904 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20425) <= _20425:
                            delegate address(_10401).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20425 + ceil32(_12954) + _15584 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22460 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22716 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22716:
                                    mem[idx + _22460 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22716) > _22716:
                                    mem[_22716 + _22460 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22716) + _22460 + -mem[64] + 68
                            _22298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22298] = return_data.size
                            mem[_22298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22461 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22461 + 68] = mem[idx + _22298 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22461 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22461 + -mem[64] + 68
                        mem[_20425 + ceil32(_12954) + _15584 + 100] = 0
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20425 + ceil32(_12954) + _15584 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22718 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22718:
                                mem[idx + _22462 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22718) > _22718:
                                mem[_22718 + _22462 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22718) + _22462 + -mem[64] + 68
                        _22299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22299] = return_data.size
                        mem[_22299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22463 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22463 + 68] = mem[idx + _22299 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22463 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22463 + -mem[64] + 68
                    mem[_12954 + mem[64] + 100] = 0
                    _17905 = mem[64]
                    mem[mem[64]] = ceil32(_12954) + 68
                    mem[64] = ceil32(_12954) + mem[64] + 100
                    _17953 = mem[_10422]
                    s = 0
                    while s < _17953:
                        mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17953) <= _17953:
                        mem[_17905 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15584 + 100 len _17953])) or mem[_17905 + 36 len 28]
                        _20426 = mem[_17905]
                        s = 0
                        while s < _20426:
                            mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _17905 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20426) <= _20426:
                            delegate address(_10401).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20426 + ceil32(_12954) + _15584 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22464 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22720 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22720:
                                    mem[idx + _22464 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22720) > _22720:
                                    mem[_22720 + _22464 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22720) + _22464 + -mem[64] + 68
                            _22300 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22300] = return_data.size
                            mem[_22300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22465 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22465 + 68] = mem[idx + _22300 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22465 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22465 + -mem[64] + 68
                        mem[_20426 + ceil32(_12954) + _15584 + 100] = 0
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20426 + ceil32(_12954) + _15584 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22466 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22722 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22722:
                                mem[idx + _22466 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22722) > _22722:
                                mem[_22722 + _22466 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22722) + _22466 + -mem[64] + 68
                        _22301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22301] = return_data.size
                        mem[_22301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22467 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22467 + 68] = mem[idx + _22301 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22467 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22467 + -mem[64] + 68
                    mem[_17953 + ceil32(_12954) + _15584 + 100] = 0
                    mem[_17905 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15584 + 100 len _17953])) or mem[_17905 + 36 len 28]
                    _20427 = mem[_17905]
                    s = 0
                    while s < _20427:
                        mem[s + ceil32(_12954) + _15584 + 100] = mem[s + _17905 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20427) <= _20427:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20427 + ceil32(_12954) + _15584 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22468 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22724 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22724:
                                mem[idx + _22468 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22724) > _22724:
                                mem[_22724 + _22468 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22724) + _22468 + -mem[64] + 68
                        _22302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22302] = return_data.size
                        mem[_22302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22469 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22469 + 68] = mem[idx + _22302 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22469 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22469 + -mem[64] + 68
                    mem[_20427 + ceil32(_12954) + _15584 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20427 + ceil32(_12954) + _15584 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22470 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22726 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22726:
                            mem[idx + _22470 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22726) > _22726:
                            mem[_22726 + _22470 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22726) + _22470 + -mem[64] + 68
                    _22303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22303] = return_data.size
                    mem[_22303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22471 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22471 + 68] = mem[idx + _22303 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22471 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22471 + -mem[64] + 68
                mem[_12954 + _12978 + 32] = 0
                mem[mem[64] + 4] = address(_10401)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10401)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15509] == bool(mem[_15509])
                if not mem[_15509]:
                    revert with 0, 'Invalid after adapter verification!'
                _15586 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12954
                s = 0
                while s < _12954:
                    mem[s + mem[64] + 100] = mem[s + _12978 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12954) <= _12954:
                    _17906 = mem[64]
                    mem[mem[64]] = ceil32(_12954) + 68
                    mem[64] = ceil32(_12954) + mem[64] + 100
                    _17954 = mem[_10422]
                    s = 0
                    while s < _17954:
                        mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17954) <= _17954:
                        mem[_17906 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15586 + 100 len _17954])) or mem[_17906 + 36 len 28]
                        _20428 = mem[_17906]
                        s = 0
                        while s < _20428:
                            mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _17906 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20428) <= _20428:
                            delegate address(_10401).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20428 + ceil32(_12954) + _15586 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22728 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22728:
                                    mem[idx + _22472 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22728) > _22728:
                                    mem[_22728 + _22472 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22728) + _22472 + -mem[64] + 68
                            _22304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22304] = return_data.size
                            mem[_22304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22473 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22473 + 68] = mem[idx + _22304 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22473 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22473 + -mem[64] + 68
                        mem[_20428 + ceil32(_12954) + _15586 + 100] = 0
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20428 + ceil32(_12954) + _15586 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22474 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22730 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22730:
                                mem[idx + _22474 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22730) > _22730:
                                mem[_22730 + _22474 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22730) + _22474 + -mem[64] + 68
                        _22305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22305] = return_data.size
                        mem[_22305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22475 + 68] = mem[idx + _22305 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22475 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22475 + -mem[64] + 68
                    mem[_17954 + ceil32(_12954) + _15586 + 100] = 0
                    mem[_17906 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15586 + 100 len _17954])) or mem[_17906 + 36 len 28]
                    _20429 = mem[_17906]
                    s = 0
                    while s < _20429:
                        mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _17906 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20429) <= _20429:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20429 + ceil32(_12954) + _15586 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22476 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22732 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22732:
                                mem[idx + _22476 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22732) > _22732:
                                mem[_22732 + _22476 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22732) + _22476 + -mem[64] + 68
                        _22306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22306] = return_data.size
                        mem[_22306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22477 + 68] = mem[idx + _22306 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22477 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22477 + -mem[64] + 68
                    mem[_20429 + ceil32(_12954) + _15586 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20429 + ceil32(_12954) + _15586 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22734 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22734:
                            mem[idx + _22478 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22734) > _22734:
                            mem[_22734 + _22478 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22734) + _22478 + -mem[64] + 68
                    _22307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22307] = return_data.size
                    mem[_22307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22479 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22479 + 68] = mem[idx + _22307 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22479 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22479 + -mem[64] + 68
                mem[_12954 + mem[64] + 100] = 0
                _17907 = mem[64]
                mem[mem[64]] = ceil32(_12954) + 68
                mem[64] = ceil32(_12954) + mem[64] + 100
                _17955 = mem[_10422]
                s = 0
                while s < _17955:
                    mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _10422 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17955) <= _17955:
                    mem[_17907 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15586 + 100 len _17955])) or mem[_17907 + 36 len 28]
                    _20430 = mem[_17907]
                    s = 0
                    while s < _20430:
                        mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _17907 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20430) <= _20430:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20430 + ceil32(_12954) + _15586 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22480 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22736 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22736:
                                mem[idx + _22480 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22736) > _22736:
                                mem[_22736 + _22480 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22736) + _22480 + -mem[64] + 68
                        _22308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22308] = return_data.size
                        mem[_22308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22481 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22481 + 68] = mem[idx + _22308 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22481 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22481 + -mem[64] + 68
                    mem[_20430 + ceil32(_12954) + _15586 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20430 + ceil32(_12954) + _15586 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22482 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22738 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22738:
                            mem[idx + _22482 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22738) > _22738:
                            mem[_22738 + _22482 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22738) + _22482 + -mem[64] + 68
                    _22309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22309] = return_data.size
                    mem[_22309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22483 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22483 + 68] = mem[idx + _22309 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22483 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22483 + -mem[64] + 68
                mem[_17955 + ceil32(_12954) + _15586 + 100] = 0
                mem[_17907 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15586 + 100 len _17955])) or mem[_17907 + 36 len 28]
                _20431 = mem[_17907]
                s = 0
                while s < _20431:
                    mem[s + ceil32(_12954) + _15586 + 100] = mem[s + _17907 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20431) <= _20431:
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20431 + ceil32(_12954) + _15586 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22740 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22740:
                            mem[idx + _22484 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22740) > _22740:
                            mem[_22740 + _22484 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22740) + _22484 + -mem[64] + 68
                    _22310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22310] = return_data.size
                    mem[_22310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22485 + 68] = mem[idx + _22310 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22485 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22485 + -mem[64] + 68
                mem[_20431 + ceil32(_12954) + _15586 + 100] = 0
                delegate address(_10401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20431 + ceil32(_12954) + _15586 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22742 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22742:
                        mem[idx + _22486 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22742) > _22742:
                        mem[_22742 + _22486 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22742) + _22486 + -mem[64] + 68
                _22311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22311] = return_data.size
                mem[_22311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22487 + 68] = mem[idx + _22311 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22487 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22487 + -mem[64] + 68
            mem[_10414 + _10422 + 32] = 0
            _12939 = mem[_10384 + 128]
            require mem[_10384 + 128] <= test266151307()
            require _10384 + mem[_10384 + 128] + 63 < _10384 + _10385 + 32
            _12955 = mem[_10384 + mem[_10384 + 128] + 32]
            if mem[_10384 + mem[_10384 + 128] + 32] > test266151307():
                revert with 'NH{q', 65
            _12979 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_10384 + mem[_10384 + 128] + 32])) + 1
            mem[_12979] = _12955
            require _12939 + _12955 + 64 <= _10385 + 32
            s = 0
            while s < _12955:
                mem[s + _12979 + 32] = mem[s + _10384 + _12939 + 64]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_12955) <= _12955:
                mem[mem[64] + 4] = address(_10401)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10401)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15510 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15510] == bool(mem[_15510])
                if not mem[_15510]:
                    revert with 0, 'Invalid after adapter verification!'
                _15588 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12955
                s = 0
                while s < _12955:
                    mem[s + mem[64] + 100] = mem[s + _12979 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12955) <= _12955:
                    _17908 = mem[64]
                    mem[mem[64]] = ceil32(_12955) + 68
                    mem[64] = ceil32(_12955) + mem[64] + 100
                    _17956 = mem[_10422]
                    s = 0
                    while s < _17956:
                        mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17956) <= _17956:
                        mem[_17908 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15588 + 100 len _17956])) or mem[_17908 + 36 len 28]
                        _20432 = mem[_17908]
                        s = 0
                        while s < _20432:
                            mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _17908 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20432) <= _20432:
                            delegate address(_10401).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20432 + ceil32(_12955) + _15588 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22488 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22744 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22744:
                                    mem[idx + _22488 + 68] = mem[idx + 128]
                                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22744) > _22744:
                                    mem[_22744 + _22488 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22744) + _22488 + -mem[64] + 68
                            _22312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22312] = return_data.size
                            mem[_22312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22489 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22489 + 68] = mem[idx + _22312 + 32]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22489 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22489 + -mem[64] + 68
                        mem[_20432 + ceil32(_12955) + _15588 + 100] = 0
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20432 + ceil32(_12955) + _15588 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22490 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22746 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22746:
                                mem[idx + _22490 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22746) > _22746:
                                mem[_22746 + _22490 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22746) + _22490 + -mem[64] + 68
                        _22313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22313] = return_data.size
                        mem[_22313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22491 + 68] = mem[idx + _22313 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22491 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22491 + -mem[64] + 68
                    mem[_17956 + ceil32(_12955) + _15588 + 100] = 0
                    mem[_17908 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15588 + 100 len _17956])) or mem[_17908 + 36 len 28]
                    _20433 = mem[_17908]
                    s = 0
                    while s < _20433:
                        mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _17908 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20433) <= _20433:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20433 + ceil32(_12955) + _15588 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22492 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22748 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22748:
                                mem[idx + _22492 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22748) > _22748:
                                mem[_22748 + _22492 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22748) + _22492 + -mem[64] + 68
                        _22314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22314] = return_data.size
                        mem[_22314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22493 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22493 + 68] = mem[idx + _22314 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22493 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22493 + -mem[64] + 68
                    mem[_20433 + ceil32(_12955) + _15588 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20433 + ceil32(_12955) + _15588 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22750 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22750:
                            mem[idx + _22494 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22750) > _22750:
                            mem[_22750 + _22494 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22750) + _22494 + -mem[64] + 68
                    _22315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22315] = return_data.size
                    mem[_22315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22495 + 68] = mem[idx + _22315 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22495 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22495 + -mem[64] + 68
                mem[_12955 + mem[64] + 100] = 0
                _17909 = mem[64]
                mem[mem[64]] = ceil32(_12955) + 68
                mem[64] = ceil32(_12955) + mem[64] + 100
                _17957 = mem[_10422]
                s = 0
                while s < _17957:
                    mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _10422 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17957) <= _17957:
                    mem[_17909 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15588 + 100 len _17957])) or mem[_17909 + 36 len 28]
                    _20434 = mem[_17909]
                    s = 0
                    while s < _20434:
                        mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _17909 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20434) <= _20434:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20434 + ceil32(_12955) + _15588 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22496 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22752 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22752:
                                mem[idx + _22496 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22752) > _22752:
                                mem[_22752 + _22496 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22752) + _22496 + -mem[64] + 68
                        _22316 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22316] = return_data.size
                        mem[_22316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22497 + 68] = mem[idx + _22316 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22497 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22497 + -mem[64] + 68
                    mem[_20434 + ceil32(_12955) + _15588 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20434 + ceil32(_12955) + _15588 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22754 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22754:
                            mem[idx + _22498 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22754) > _22754:
                            mem[_22754 + _22498 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22754) + _22498 + -mem[64] + 68
                    _22317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22317] = return_data.size
                    mem[_22317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22499 + 68] = mem[idx + _22317 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22499 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22499 + -mem[64] + 68
                mem[_17957 + ceil32(_12955) + _15588 + 100] = 0
                mem[_17909 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15588 + 100 len _17957])) or mem[_17909 + 36 len 28]
                _20435 = mem[_17909]
                s = 0
                while s < _20435:
                    mem[s + ceil32(_12955) + _15588 + 100] = mem[s + _17909 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20435) <= _20435:
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20435 + ceil32(_12955) + _15588 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22756 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22756:
                            mem[idx + _22500 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22756) > _22756:
                            mem[_22756 + _22500 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22756) + _22500 + -mem[64] + 68
                    _22318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22318] = return_data.size
                    mem[_22318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22501 + 68] = mem[idx + _22318 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22501 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22501 + -mem[64] + 68
                mem[_20435 + ceil32(_12955) + _15588 + 100] = 0
                delegate address(_10401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20435 + ceil32(_12955) + _15588 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22502 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22758 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22758:
                        mem[idx + _22502 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22758) > _22758:
                        mem[_22758 + _22502 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22758) + _22502 + -mem[64] + 68
                _22319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22319] = return_data.size
                mem[_22319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22503 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22503 + 68] = mem[idx + _22319 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22503 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22503 + -mem[64] + 68
            mem[_12955 + _12979 + 32] = 0
            mem[mem[64] + 4] = address(_10401)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10401)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15511] == bool(mem[_15511])
            if not mem[_15511]:
                revert with 0, 'Invalid after adapter verification!'
            _15590 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _12955
            s = 0
            while s < _12955:
                mem[s + mem[64] + 100] = mem[s + _12979 + 32]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_12955) <= _12955:
                _17910 = mem[64]
                mem[mem[64]] = ceil32(_12955) + 68
                mem[64] = ceil32(_12955) + mem[64] + 100
                _17958 = mem[_10422]
                s = 0
                while s < _17958:
                    mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _10422 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17958) <= _17958:
                    mem[_17910 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15590 + 100 len _17958])) or mem[_17910 + 36 len 28]
                    _20436 = mem[_17910]
                    s = 0
                    while s < _20436:
                        mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _17910 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20436) <= _20436:
                        delegate address(_10401).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20436 + ceil32(_12955) + _15590 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22504 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22760 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22760:
                                mem[idx + _22504 + 68] = mem[idx + 128]
                                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22760) > _22760:
                                mem[_22760 + _22504 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22760) + _22504 + -mem[64] + 68
                        _22320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22320] = return_data.size
                        mem[_22320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22505 + 68] = mem[idx + _22320 + 32]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22505 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22505 + -mem[64] + 68
                    mem[_20436 + ceil32(_12955) + _15590 + 100] = 0
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20436 + ceil32(_12955) + _15590 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22762 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22762:
                            mem[idx + _22506 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22762) > _22762:
                            mem[_22762 + _22506 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22762) + _22506 + -mem[64] + 68
                    _22321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22321] = return_data.size
                    mem[_22321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22507 + 68] = mem[idx + _22321 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22507 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22507 + -mem[64] + 68
                mem[_17958 + ceil32(_12955) + _15590 + 100] = 0
                mem[_17910 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15590 + 100 len _17958])) or mem[_17910 + 36 len 28]
                _20437 = mem[_17910]
                s = 0
                while s < _20437:
                    mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _17910 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20437) <= _20437:
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20437 + ceil32(_12955) + _15590 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22764 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22764:
                            mem[idx + _22508 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22764) > _22764:
                            mem[_22764 + _22508 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22764) + _22508 + -mem[64] + 68
                    _22322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22322] = return_data.size
                    mem[_22322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22509 + 68] = mem[idx + _22322 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22509 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22509 + -mem[64] + 68
                mem[_20437 + ceil32(_12955) + _15590 + 100] = 0
                delegate address(_10401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20437 + ceil32(_12955) + _15590 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22766 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22766:
                        mem[idx + _22510 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22766) > _22766:
                        mem[_22766 + _22510 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22766) + _22510 + -mem[64] + 68
                _22323 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22323] = return_data.size
                mem[_22323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22511 + 68] = mem[idx + _22323 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22511 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22511 + -mem[64] + 68
            mem[_12955 + mem[64] + 100] = 0
            _17911 = mem[64]
            mem[mem[64]] = ceil32(_12955) + 68
            mem[64] = ceil32(_12955) + mem[64] + 100
            _17959 = mem[_10422]
            s = 0
            while s < _17959:
                mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _10422 + 32]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_17959) <= _17959:
                mem[_17911 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15590 + 100 len _17959])) or mem[_17911 + 36 len 28]
                _20438 = mem[_17911]
                s = 0
                while s < _20438:
                    mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _17911 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20438) <= _20438:
                    delegate address(_10401).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20438 + ceil32(_12955) + _15590 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22768 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22768:
                            mem[idx + _22512 + 68] = mem[idx + 128]
                            _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22768) > _22768:
                            mem[_22768 + _22512 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22768) + _22512 + -mem[64] + 68
                    _22324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22324] = return_data.size
                    mem[_22324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22513 + 68] = mem[idx + _22324 + 32]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22513 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22513 + -mem[64] + 68
                mem[_20438 + ceil32(_12955) + _15590 + 100] = 0
                delegate address(_10401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20438 + ceil32(_12955) + _15590 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22770 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22770:
                        mem[idx + _22514 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22770) > _22770:
                        mem[_22770 + _22514 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22770) + _22514 + -mem[64] + 68
                _22325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22325] = return_data.size
                mem[_22325 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22515 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22515 + 68] = mem[idx + _22325 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22515 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22515 + -mem[64] + 68
            mem[_17959 + ceil32(_12955) + _15590 + 100] = 0
            mem[_17911 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15590 + 100 len _17959])) or mem[_17911 + 36 len 28]
            _20439 = mem[_17911]
            s = 0
            while s < _20439:
                mem[s + ceil32(_12955) + _15590 + 100] = mem[s + _17911 + 32]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_20439) <= _20439:
                delegate address(_10401).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20439 + ceil32(_12955) + _15590 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22516 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22772 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22772:
                        mem[idx + _22516 + 68] = mem[idx + 128]
                        _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22772) > _22772:
                        mem[_22772 + _22516 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22772) + _22516 + -mem[64] + 68
                _22326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22326] = return_data.size
                mem[_22326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22517 + 68] = mem[idx + _22326 + 32]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22517 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22517 + -mem[64] + 68
            mem[_20439 + ceil32(_12955) + _15590 + 100] = 0
            delegate address(_10401).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _20439 + ceil32(_12955) + _15590 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22518 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _22774 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _22774:
                    mem[idx + _22518 + 68] = mem[idx + 128]
                    _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(_22774) > _22774:
                    mem[_22774 + _22518 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_22774) + _22518 + -mem[64] + 68
            _22327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_22327] = return_data.size
            mem[_22327 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 'NH{q', 17
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = idx + 1
                continue 
            _22519 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _22519 + 68] = mem[idx + _22327 + 32]
                _10346 = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _22519 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _22519 + -mem[64] + 68
    else:
        if owner != msg.sender:
            revert with 0, 'Permit: caller is not the Permit'
        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        while idx < _10347:
            if idx >= mem[_5176]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + _5176 + 44 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 128]:
                    _10371 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    _10372 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 64
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                    _10398 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                    require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] <= test266151307()
                    require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                    _10406 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32]
                    if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _10417 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1
                    mem[_10417] = _10406
                    require _10398 + _10406 + 64 <= _10372 + 32
                    s = 0
                    while s < _10406:
                        mem[s + _10417 + 32] = mem[s + _10371 + _10398 + 64]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_10406) <= _10406:
                        require _10406 >= 128
                        _12964 = mem[_10417 + 32]
                        require mem[_10417 + 32] == mem[_10417 + 44 len 20]
                        _12972 = mem[_10417 + 64]
                        require mem[_10417 + 64] == Mask(32, 224, mem[_10417 + 64])
                        _12992 = mem[_10417 + 96]
                        _12993 = mem[_10417 + 128]
                        require mem[_10417 + 128] <= test266151307()
                        require _10417 + mem[_10417 + 128] + 63 < _10417 + _10406 + 32
                        _13004 = mem[_10417 + mem[_10417 + 128] + 32]
                        if mem[_10417 + mem[_10417 + 128] + 32] > test266151307():
                            revert with 'NH{q', 65
                        _13020 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1
                        mem[_13020] = _13004
                        require _12993 + _13004 + 64 <= _10406 + 32
                        s = 0
                        while s < _13004:
                            mem[s + _13020 + 32] = mem[s + _10417 + _12993 + 64]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13004) <= _13004:
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12964)
                            mem[mem[64] + 36] = Mask(32, 224, _12972)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13004
                            s = 0
                            while s < _13004:
                                mem[s + mem[64] + 132] = mem[s + _13020 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13004) <= _13004:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12992 wei
                                     gas gas_remaining wei
                                    args address(_12964), Mask(32, 224, _12972), Array(len=_13004, data=mem[mem[64] + 132 len ceil32(_13004)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17992 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18040 = mem[_17992]
                                require mem[_17992] <= test266151307()
                                require _17992 + mem[_17992] + 31 < _17992 + return_data.size
                                _18216 = mem[_17992 + mem[_17992]]
                                if mem[_17992 + mem[_17992]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17992 + mem[_17992]])) + 1 < 0 or _17992 + ceil32(return_data.size) + ceil32(ceil32(mem[_17992 + mem[_17992]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17992 + ceil32(return_data.size) + ceil32(ceil32(mem[_17992 + mem[_17992]])) + 1
                                mem[_17992 + ceil32(return_data.size)] = _18216
                                require _18040 + _18216 + 32 <= return_data.size
                                s = 0
                                while s < _18216:
                                    mem[s + _17992 + ceil32(return_data.size) + 32] = mem[s + _17992 + _18040 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18216) > _18216:
                                    mem[_18216 + _17992 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13004 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12992 wei
                                     gas gas_remaining wei
                                    args address(_12964), Mask(32, 224, _12972), Array(len=_13004, data=mem[mem[64] + 132 len ceil32(_13004)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17993 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18041 = mem[_17993]
                                require mem[_17993] <= test266151307()
                                require _17993 + mem[_17993] + 31 < _17993 + return_data.size
                                _18217 = mem[_17993 + mem[_17993]]
                                if mem[_17993 + mem[_17993]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17993 + mem[_17993]])) + 1 < 0 or _17993 + ceil32(return_data.size) + ceil32(ceil32(mem[_17993 + mem[_17993]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17993 + ceil32(return_data.size) + ceil32(ceil32(mem[_17993 + mem[_17993]])) + 1
                                mem[_17993 + ceil32(return_data.size)] = _18217
                                require _18041 + _18217 + 32 <= return_data.size
                                s = 0
                                while s < _18217:
                                    mem[s + _17993 + ceil32(return_data.size) + 32] = mem[s + _17993 + _18041 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18217) > _18217:
                                    mem[_18217 + _17993 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13004 + _13020 + 32] = 0
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12964)
                            mem[mem[64] + 36] = Mask(32, 224, _12972)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13004
                            s = 0
                            while s < _13004:
                                mem[s + mem[64] + 132] = mem[s + _13020 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13004) <= _13004:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12992 wei
                                     gas gas_remaining wei
                                    args address(_12964), Mask(32, 224, _12972), Array(len=_13004, data=mem[mem[64] + 132 len ceil32(_13004)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17994 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18042 = mem[_17994]
                                require mem[_17994] <= test266151307()
                                require _17994 + mem[_17994] + 31 < _17994 + return_data.size
                                _18218 = mem[_17994 + mem[_17994]]
                                if mem[_17994 + mem[_17994]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17994 + mem[_17994]])) + 1 < 0 or _17994 + ceil32(return_data.size) + ceil32(ceil32(mem[_17994 + mem[_17994]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17994 + ceil32(return_data.size) + ceil32(ceil32(mem[_17994 + mem[_17994]])) + 1
                                mem[_17994 + ceil32(return_data.size)] = _18218
                                require _18042 + _18218 + 32 <= return_data.size
                                s = 0
                                while s < _18218:
                                    mem[s + _17994 + ceil32(return_data.size) + 32] = mem[s + _17994 + _18042 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18218) > _18218:
                                    mem[_18218 + _17994 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13004 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12992 wei
                                     gas gas_remaining wei
                                    args address(_12964), Mask(32, 224, _12972), Array(len=_13004, data=mem[mem[64] + 132 len ceil32(_13004)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17995 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18043 = mem[_17995]
                                require mem[_17995] <= test266151307()
                                require _17995 + mem[_17995] + 31 < _17995 + return_data.size
                                _18219 = mem[_17995 + mem[_17995]]
                                if mem[_17995 + mem[_17995]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17995 + mem[_17995]])) + 1 < 0 or _17995 + ceil32(return_data.size) + ceil32(ceil32(mem[_17995 + mem[_17995]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17995 + ceil32(return_data.size) + ceil32(ceil32(mem[_17995 + mem[_17995]])) + 1
                                mem[_17995 + ceil32(return_data.size)] = _18219
                                require _18043 + _18219 + 32 <= return_data.size
                                s = 0
                                while s < _18219:
                                    mem[s + _17995 + ceil32(return_data.size) + 32] = mem[s + _17995 + _18043 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18219) > _18219:
                                    mem[_18219 + _17995 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_10406 + _10417 + 32] = 0
                        require _10406 >= 128
                        _12965 = mem[_10417 + 32]
                        require mem[_10417 + 32] == mem[_10417 + 44 len 20]
                        _12973 = mem[_10417 + 64]
                        require mem[_10417 + 64] == Mask(32, 224, mem[_10417 + 64])
                        _12994 = mem[_10417 + 96]
                        _12995 = mem[_10417 + 128]
                        require mem[_10417 + 128] <= test266151307()
                        require _10417 + mem[_10417 + 128] + 63 < _10417 + _10406 + 32
                        _13005 = mem[_10417 + mem[_10417 + 128] + 32]
                        if mem[_10417 + mem[_10417 + 128] + 32] > test266151307():
                            revert with 'NH{q', 65
                        _13021 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_10417 + mem[_10417 + 128] + 32])) + 1
                        mem[_13021] = _13005
                        require _12995 + _13005 + 64 <= _10406 + 32
                        s = 0
                        while s < _13005:
                            mem[s + _13021 + 32] = mem[s + _10417 + _12995 + 64]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13005) <= _13005:
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12965)
                            mem[mem[64] + 36] = Mask(32, 224, _12973)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13005
                            s = 0
                            while s < _13005:
                                mem[s + mem[64] + 132] = mem[s + _13021 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13005) <= _13005:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12994 wei
                                     gas gas_remaining wei
                                    args address(_12965), Mask(32, 224, _12973), Array(len=_13005, data=mem[mem[64] + 132 len ceil32(_13005)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17996 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18044 = mem[_17996]
                                require mem[_17996] <= test266151307()
                                require _17996 + mem[_17996] + 31 < _17996 + return_data.size
                                _18220 = mem[_17996 + mem[_17996]]
                                if mem[_17996 + mem[_17996]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17996 + mem[_17996]])) + 1 < 0 or _17996 + ceil32(return_data.size) + ceil32(ceil32(mem[_17996 + mem[_17996]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17996 + ceil32(return_data.size) + ceil32(ceil32(mem[_17996 + mem[_17996]])) + 1
                                mem[_17996 + ceil32(return_data.size)] = _18220
                                require _18044 + _18220 + 32 <= return_data.size
                                s = 0
                                while s < _18220:
                                    mem[s + _17996 + ceil32(return_data.size) + 32] = mem[s + _17996 + _18044 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18220) > _18220:
                                    mem[_18220 + _17996 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13005 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12994 wei
                                     gas gas_remaining wei
                                    args address(_12965), Mask(32, 224, _12973), Array(len=_13005, data=mem[mem[64] + 132 len ceil32(_13005)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17997 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18045 = mem[_17997]
                                require mem[_17997] <= test266151307()
                                require _17997 + mem[_17997] + 31 < _17997 + return_data.size
                                _18221 = mem[_17997 + mem[_17997]]
                                if mem[_17997 + mem[_17997]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17997 + mem[_17997]])) + 1 < 0 or _17997 + ceil32(return_data.size) + ceil32(ceil32(mem[_17997 + mem[_17997]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17997 + ceil32(return_data.size) + ceil32(ceil32(mem[_17997 + mem[_17997]])) + 1
                                mem[_17997 + ceil32(return_data.size)] = _18221
                                require _18045 + _18221 + 32 <= return_data.size
                                s = 0
                                while s < _18221:
                                    mem[s + _17997 + ceil32(return_data.size) + 32] = mem[s + _17997 + _18045 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18221) > _18221:
                                    mem[_18221 + _17997 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13005 + _13021 + 32] = 0
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12965)
                            mem[mem[64] + 36] = Mask(32, 224, _12973)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13005
                            s = 0
                            while s < _13005:
                                mem[s + mem[64] + 132] = mem[s + _13021 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_13005) <= _13005:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12994 wei
                                     gas gas_remaining wei
                                    args address(_12965), Mask(32, 224, _12973), Array(len=_13005, data=mem[mem[64] + 132 len ceil32(_13005)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17998 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18046 = mem[_17998]
                                require mem[_17998] <= test266151307()
                                require _17998 + mem[_17998] + 31 < _17998 + return_data.size
                                _18222 = mem[_17998 + mem[_17998]]
                                if mem[_17998 + mem[_17998]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17998 + mem[_17998]])) + 1 < 0 or _17998 + ceil32(return_data.size) + ceil32(ceil32(mem[_17998 + mem[_17998]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17998 + ceil32(return_data.size) + ceil32(ceil32(mem[_17998 + mem[_17998]])) + 1
                                mem[_17998 + ceil32(return_data.size)] = _18222
                                require _18046 + _18222 + 32 <= return_data.size
                                s = 0
                                while s < _18222:
                                    mem[s + _17998 + ceil32(return_data.size) + 32] = mem[s + _17998 + _18046 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18222) > _18222:
                                    mem[_18222 + _17998 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13005 + mem[64] + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).0xd098d39a with:
                                   value _12994 wei
                                     gas gas_remaining wei
                                    args address(_12965), Mask(32, 224, _12973), Array(len=_13005, data=mem[mem[64] + 132 len ceil32(_13005)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17999 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18047 = mem[_17999]
                                require mem[_17999] <= test266151307()
                                require _17999 + mem[_17999] + 31 < _17999 + return_data.size
                                _18223 = mem[_17999 + mem[_17999]]
                                if mem[_17999 + mem[_17999]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(ceil32(mem[_17999 + mem[_17999]])) + 1 < 0 or _17999 + ceil32(return_data.size) + ceil32(ceil32(mem[_17999 + mem[_17999]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _17999 + ceil32(return_data.size) + ceil32(ceil32(mem[_17999 + mem[_17999]])) + 1
                                mem[_17999 + ceil32(return_data.size)] = _18223
                                require _18047 + _18223 + 32 <= return_data.size
                                s = 0
                                while s < _18223:
                                    mem[s + _17999 + ceil32(return_data.size) + 32] = mem[s + _17999 + _18047 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_18223) > _18223:
                                    mem[_18223 + _17999 + ceil32(return_data.size) + 32] = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _10373 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _10374 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 128
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                _10399 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 76 len 20]
                _10407 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] <= test266151307()
                require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                _10411 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32]
                if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32] > test266151307():
                    revert with 'NH{q', 65
                _10420 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1
                mem[_10420] = _10411
                require _10407 + _10411 + 64 <= _10374 + 32
                s = 0
                while s < _10411:
                    mem[s + _10420 + 32] = mem[s + _10373 + _10407 + 64]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_10411) <= _10411:
                    _12940 = mem[_10373 + 128]
                    require mem[_10373 + 128] <= test266151307()
                    require _10373 + mem[_10373 + 128] + 63 < _10373 + _10374 + 32
                    _12956 = mem[_10373 + mem[_10373 + 128] + 32]
                    if mem[_10373 + mem[_10373 + 128] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _12980 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1
                    mem[_12980] = _12956
                    require _12940 + _12956 + 64 <= _10374 + 32
                    s = 0
                    while s < _12956:
                        mem[s + _12980 + 32] = mem[s + _10373 + _12940 + 64]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12956) <= _12956:
                        mem[mem[64] + 4] = address(_10399)
                        require ext_code.size(address(stor103.field_0))
                        staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                                gas gas_remaining wei
                               args address(_10399)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15516] == bool(mem[_15516])
                        if not mem[_15516]:
                            revert with 0, 'Invalid after adapter verification!'
                        _15600 = mem[64]
                        mem[mem[64] + 36] = 32
                        mem[mem[64] + 68] = _12956
                        s = 0
                        while s < _12956:
                            mem[s + mem[64] + 100] = mem[s + _12980 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_12956) <= _12956:
                            _17920 = mem[64]
                            mem[mem[64]] = ceil32(_12956) + 68
                            mem[64] = ceil32(_12956) + mem[64] + 100
                            _17960 = mem[_10420]
                            s = 0
                            while s < _17960:
                                mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _10420 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_17960) <= _17960:
                                mem[_17920 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15600 + 100 len _17960])) or mem[_17920 + 36 len 28]
                                _20440 = mem[_17920]
                                s = 0
                                while s < _20440:
                                    mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _17920 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    s = s + 32
                                    continue 
                                if ceil32(_20440) <= _20440:
                                    delegate address(_10399).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _20440 + ceil32(_12956) + _15600 + -mem[64] + 96]
                                    if not return_data.size:
                                        if delegate.return_code:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            idx = idx + 1
                                            continue 
                                        _22520 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        _22776 = mem[96]
                                        mem[mem[64] + 36] = mem[96]
                                        idx = 0
                                        while idx < _22776:
                                            mem[idx + _22520 + 68] = mem[idx + 128]
                                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_22776) > _22776:
                                            mem[_22776 + _22520 + 68] = 0
                                        revert with memory
                                          from mem[64]
                                           len ceil32(_22776) + _22520 + -mem[64] + 68
                                    _22328 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_22328] = return_data.size
                                    mem[_22328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22521 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = return_data.size
                                    idx = 0
                                    while idx < return_data.size:
                                        mem[idx + _22521 + 68] = mem[idx + _22328 + 32]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(return_data.size) > return_data.size:
                                        mem[return_data.size + _22521 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(return_data.size) + _22521 + -mem[64] + 68
                                mem[_20440 + ceil32(_12956) + _15600 + 100] = 0
                                delegate address(_10399).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20440 + ceil32(_12956) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22522 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22778 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22778:
                                        mem[idx + _22522 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22778) > _22778:
                                        mem[_22778 + _22522 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22778) + _22522 + -mem[64] + 68
                                _22329 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22329] = return_data.size
                                mem[_22329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22523 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22523 + 68] = mem[idx + _22329 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22523 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22523 + -mem[64] + 68
                            mem[_17960 + ceil32(_12956) + _15600 + 100] = 0
                            mem[_17920 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15600 + 100 len _17960])) or mem[_17920 + 36 len 28]
                            _20441 = mem[_17920]
                            s = 0
                            while s < _20441:
                                mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _17920 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20441) <= _20441:
                                delegate address(_10399).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20441 + ceil32(_12956) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22524 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22780 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22780:
                                        mem[idx + _22524 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22780) > _22780:
                                        mem[_22780 + _22524 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22780) + _22524 + -mem[64] + 68
                                _22330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22330] = return_data.size
                                mem[_22330 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22525 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22525 + 68] = mem[idx + _22330 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22525 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22525 + -mem[64] + 68
                            mem[_20441 + ceil32(_12956) + _15600 + 100] = 0
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20441 + ceil32(_12956) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22526 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22782 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22782:
                                    mem[idx + _22526 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22782) > _22782:
                                    mem[_22782 + _22526 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22782) + _22526 + -mem[64] + 68
                            _22331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22331] = return_data.size
                            mem[_22331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22527 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22527 + 68] = mem[idx + _22331 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22527 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22527 + -mem[64] + 68
                        mem[_12956 + mem[64] + 100] = 0
                        _17921 = mem[64]
                        mem[mem[64]] = ceil32(_12956) + 68
                        mem[64] = ceil32(_12956) + mem[64] + 100
                        _17961 = mem[_10420]
                        s = 0
                        while s < _17961:
                            mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _10420 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17961) <= _17961:
                            mem[_17921 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15600 + 100 len _17961])) or mem[_17921 + 36 len 28]
                            _20442 = mem[_17921]
                            s = 0
                            while s < _20442:
                                mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _17921 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20442) <= _20442:
                                delegate address(_10399).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20442 + ceil32(_12956) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22528 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22784 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22784:
                                        mem[idx + _22528 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22784) > _22784:
                                        mem[_22784 + _22528 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22784) + _22528 + -mem[64] + 68
                                _22332 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22332] = return_data.size
                                mem[_22332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22529 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22529 + 68] = mem[idx + _22332 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22529 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22529 + -mem[64] + 68
                            mem[_20442 + ceil32(_12956) + _15600 + 100] = 0
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20442 + ceil32(_12956) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22530 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22786 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22786:
                                    mem[idx + _22530 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22786) > _22786:
                                    mem[_22786 + _22530 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22786) + _22530 + -mem[64] + 68
                            _22333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22333] = return_data.size
                            mem[_22333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22531 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22531 + 68] = mem[idx + _22333 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22531 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22531 + -mem[64] + 68
                        mem[_17961 + ceil32(_12956) + _15600 + 100] = 0
                        mem[_17921 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15600 + 100 len _17961])) or mem[_17921 + 36 len 28]
                        _20443 = mem[_17921]
                        s = 0
                        while s < _20443:
                            mem[s + ceil32(_12956) + _15600 + 100] = mem[s + _17921 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20443) <= _20443:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20443 + ceil32(_12956) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22532 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22788 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22788:
                                    mem[idx + _22532 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22788) > _22788:
                                    mem[_22788 + _22532 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22788) + _22532 + -mem[64] + 68
                            _22334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22334] = return_data.size
                            mem[_22334 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22533 + 68] = mem[idx + _22334 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22533 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22533 + -mem[64] + 68
                        mem[_20443 + ceil32(_12956) + _15600 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20443 + ceil32(_12956) + _15600 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22534 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22790 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22790:
                                mem[idx + _22534 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22790) > _22790:
                                mem[_22790 + _22534 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22790) + _22534 + -mem[64] + 68
                        _22335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22335] = return_data.size
                        mem[_22335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22535 + 68] = mem[idx + _22335 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22535 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22535 + -mem[64] + 68
                    mem[_12956 + _12980 + 32] = 0
                    mem[mem[64] + 4] = address(_10399)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10399)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15517] == bool(mem[_15517])
                    if not mem[_15517]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15602 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12956
                    s = 0
                    while s < _12956:
                        mem[s + mem[64] + 100] = mem[s + _12980 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12956) <= _12956:
                        _17922 = mem[64]
                        mem[mem[64]] = ceil32(_12956) + 68
                        mem[64] = ceil32(_12956) + mem[64] + 100
                        _17962 = mem[_10420]
                        s = 0
                        while s < _17962:
                            mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _10420 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17962) <= _17962:
                            mem[_17922 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15602 + 100 len _17962])) or mem[_17922 + 36 len 28]
                            _20444 = mem[_17922]
                            s = 0
                            while s < _20444:
                                mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _17922 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20444) <= _20444:
                                delegate address(_10399).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20444 + ceil32(_12956) + _15602 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22536 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22792 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22792:
                                        mem[idx + _22536 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22792) > _22792:
                                        mem[_22792 + _22536 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22792) + _22536 + -mem[64] + 68
                                _22336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22336] = return_data.size
                                mem[_22336 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22537 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22537 + 68] = mem[idx + _22336 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22537 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22537 + -mem[64] + 68
                            mem[_20444 + ceil32(_12956) + _15602 + 100] = 0
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20444 + ceil32(_12956) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22538 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22794 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22794:
                                    mem[idx + _22538 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22794) > _22794:
                                    mem[_22794 + _22538 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22794) + _22538 + -mem[64] + 68
                            _22337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22337] = return_data.size
                            mem[_22337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22539 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22539 + 68] = mem[idx + _22337 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22539 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22539 + -mem[64] + 68
                        mem[_17962 + ceil32(_12956) + _15602 + 100] = 0
                        mem[_17922 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15602 + 100 len _17962])) or mem[_17922 + 36 len 28]
                        _20445 = mem[_17922]
                        s = 0
                        while s < _20445:
                            mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _17922 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20445) <= _20445:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20445 + ceil32(_12956) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22540 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22796 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22796:
                                    mem[idx + _22540 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22796) > _22796:
                                    mem[_22796 + _22540 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22796) + _22540 + -mem[64] + 68
                            _22338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22338] = return_data.size
                            mem[_22338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22541 + 68] = mem[idx + _22338 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22541 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22541 + -mem[64] + 68
                        mem[_20445 + ceil32(_12956) + _15602 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20445 + ceil32(_12956) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22542 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22798 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22798:
                                mem[idx + _22542 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22798) > _22798:
                                mem[_22798 + _22542 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22798) + _22542 + -mem[64] + 68
                        _22339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22339] = return_data.size
                        mem[_22339 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22543 + 68] = mem[idx + _22339 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22543 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22543 + -mem[64] + 68
                    mem[_12956 + mem[64] + 100] = 0
                    _17923 = mem[64]
                    mem[mem[64]] = ceil32(_12956) + 68
                    mem[64] = ceil32(_12956) + mem[64] + 100
                    _17963 = mem[_10420]
                    s = 0
                    while s < _17963:
                        mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _10420 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17963) <= _17963:
                        mem[_17923 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15602 + 100 len _17963])) or mem[_17923 + 36 len 28]
                        _20446 = mem[_17923]
                        s = 0
                        while s < _20446:
                            mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _17923 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20446) <= _20446:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20446 + ceil32(_12956) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22544 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22800 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22800:
                                    mem[idx + _22544 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22800) > _22800:
                                    mem[_22800 + _22544 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22800) + _22544 + -mem[64] + 68
                            _22340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22340] = return_data.size
                            mem[_22340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22545 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22545 + 68] = mem[idx + _22340 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22545 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22545 + -mem[64] + 68
                        mem[_20446 + ceil32(_12956) + _15602 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20446 + ceil32(_12956) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22802 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22802:
                                mem[idx + _22546 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22802) > _22802:
                                mem[_22802 + _22546 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22802) + _22546 + -mem[64] + 68
                        _22341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22341] = return_data.size
                        mem[_22341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22547 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22547 + 68] = mem[idx + _22341 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22547 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22547 + -mem[64] + 68
                    mem[_17963 + ceil32(_12956) + _15602 + 100] = 0
                    mem[_17923 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15602 + 100 len _17963])) or mem[_17923 + 36 len 28]
                    _20447 = mem[_17923]
                    s = 0
                    while s < _20447:
                        mem[s + ceil32(_12956) + _15602 + 100] = mem[s + _17923 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20447) <= _20447:
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20447 + ceil32(_12956) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22548 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22804 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22804:
                                mem[idx + _22548 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22804) > _22804:
                                mem[_22804 + _22548 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22804) + _22548 + -mem[64] + 68
                        _22342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22342] = return_data.size
                        mem[_22342 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22549 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22549 + 68] = mem[idx + _22342 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22549 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22549 + -mem[64] + 68
                    mem[_20447 + ceil32(_12956) + _15602 + 100] = 0
                    delegate address(_10399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20447 + ceil32(_12956) + _15602 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22806 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22806:
                            mem[idx + _22550 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22806) > _22806:
                            mem[_22806 + _22550 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22806) + _22550 + -mem[64] + 68
                    _22343 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22343] = return_data.size
                    mem[_22343 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22551 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22551 + 68] = mem[idx + _22343 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22551 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22551 + -mem[64] + 68
                mem[_10411 + _10420 + 32] = 0
                _12941 = mem[_10373 + 128]
                require mem[_10373 + 128] <= test266151307()
                require _10373 + mem[_10373 + 128] + 63 < _10373 + _10374 + 32
                _12957 = mem[_10373 + mem[_10373 + 128] + 32]
                if mem[_10373 + mem[_10373 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _12981 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10373 + mem[_10373 + 128] + 32])) + 1
                mem[_12981] = _12957
                require _12941 + _12957 + 64 <= _10374 + 32
                s = 0
                while s < _12957:
                    mem[s + _12981 + 32] = mem[s + _10373 + _12941 + 64]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12957) <= _12957:
                    mem[mem[64] + 4] = address(_10399)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10399)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15518] == bool(mem[_15518])
                    if not mem[_15518]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15604 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12957
                    s = 0
                    while s < _12957:
                        mem[s + mem[64] + 100] = mem[s + _12981 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12957) <= _12957:
                        _17924 = mem[64]
                        mem[mem[64]] = ceil32(_12957) + 68
                        mem[64] = ceil32(_12957) + mem[64] + 100
                        _17964 = mem[_10420]
                        s = 0
                        while s < _17964:
                            mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _10420 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17964) <= _17964:
                            mem[_17924 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15604 + 100 len _17964])) or mem[_17924 + 36 len 28]
                            _20448 = mem[_17924]
                            s = 0
                            while s < _20448:
                                mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _17924 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20448) <= _20448:
                                delegate address(_10399).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20448 + ceil32(_12957) + _15604 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22552 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22808 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22808:
                                        mem[idx + _22552 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22808) > _22808:
                                        mem[_22808 + _22552 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22808) + _22552 + -mem[64] + 68
                                _22344 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22344] = return_data.size
                                mem[_22344 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22553 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22553 + 68] = mem[idx + _22344 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22553 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22553 + -mem[64] + 68
                            mem[_20448 + ceil32(_12957) + _15604 + 100] = 0
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20448 + ceil32(_12957) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22554 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22810 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22810:
                                    mem[idx + _22554 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22810) > _22810:
                                    mem[_22810 + _22554 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22810) + _22554 + -mem[64] + 68
                            _22345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22345] = return_data.size
                            mem[_22345 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22555 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22555 + 68] = mem[idx + _22345 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22555 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22555 + -mem[64] + 68
                        mem[_17964 + ceil32(_12957) + _15604 + 100] = 0
                        mem[_17924 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15604 + 100 len _17964])) or mem[_17924 + 36 len 28]
                        _20449 = mem[_17924]
                        s = 0
                        while s < _20449:
                            mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _17924 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20449) <= _20449:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20449 + ceil32(_12957) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22556 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22812 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22812:
                                    mem[idx + _22556 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22812) > _22812:
                                    mem[_22812 + _22556 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22812) + _22556 + -mem[64] + 68
                            _22346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22346] = return_data.size
                            mem[_22346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22557 + 68] = mem[idx + _22346 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22557 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22557 + -mem[64] + 68
                        mem[_20449 + ceil32(_12957) + _15604 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20449 + ceil32(_12957) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22814 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22814:
                                mem[idx + _22558 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22814) > _22814:
                                mem[_22814 + _22558 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22814) + _22558 + -mem[64] + 68
                        _22347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22347] = return_data.size
                        mem[_22347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22559 + 68] = mem[idx + _22347 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22559 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22559 + -mem[64] + 68
                    mem[_12957 + mem[64] + 100] = 0
                    _17925 = mem[64]
                    mem[mem[64]] = ceil32(_12957) + 68
                    mem[64] = ceil32(_12957) + mem[64] + 100
                    _17965 = mem[_10420]
                    s = 0
                    while s < _17965:
                        mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _10420 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17965) <= _17965:
                        mem[_17925 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15604 + 100 len _17965])) or mem[_17925 + 36 len 28]
                        _20450 = mem[_17925]
                        s = 0
                        while s < _20450:
                            mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _17925 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20450) <= _20450:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20450 + ceil32(_12957) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22560 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22816 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22816:
                                    mem[idx + _22560 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22816) > _22816:
                                    mem[_22816 + _22560 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22816) + _22560 + -mem[64] + 68
                            _22348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22348] = return_data.size
                            mem[_22348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22561 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22561 + 68] = mem[idx + _22348 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22561 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22561 + -mem[64] + 68
                        mem[_20450 + ceil32(_12957) + _15604 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20450 + ceil32(_12957) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22562 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22818 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22818:
                                mem[idx + _22562 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22818) > _22818:
                                mem[_22818 + _22562 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22818) + _22562 + -mem[64] + 68
                        _22349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22349] = return_data.size
                        mem[_22349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22563 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22563 + 68] = mem[idx + _22349 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22563 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22563 + -mem[64] + 68
                    mem[_17965 + ceil32(_12957) + _15604 + 100] = 0
                    mem[_17925 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15604 + 100 len _17965])) or mem[_17925 + 36 len 28]
                    _20451 = mem[_17925]
                    s = 0
                    while s < _20451:
                        mem[s + ceil32(_12957) + _15604 + 100] = mem[s + _17925 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20451) <= _20451:
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20451 + ceil32(_12957) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22564 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22820 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22820:
                                mem[idx + _22564 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22820) > _22820:
                                mem[_22820 + _22564 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22820) + _22564 + -mem[64] + 68
                        _22350 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22350] = return_data.size
                        mem[_22350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22565 + 68] = mem[idx + _22350 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22565 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22565 + -mem[64] + 68
                    mem[_20451 + ceil32(_12957) + _15604 + 100] = 0
                    delegate address(_10399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20451 + ceil32(_12957) + _15604 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22822 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22822:
                            mem[idx + _22566 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22822) > _22822:
                            mem[_22822 + _22566 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22822) + _22566 + -mem[64] + 68
                    _22351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22351] = return_data.size
                    mem[_22351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22567 + 68] = mem[idx + _22351 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22567 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22567 + -mem[64] + 68
                mem[_12957 + _12981 + 32] = 0
                mem[mem[64] + 4] = address(_10399)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10399)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15519] == bool(mem[_15519])
                if not mem[_15519]:
                    revert with 0, 'Invalid after adapter verification!'
                _15606 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12957
                s = 0
                while s < _12957:
                    mem[s + mem[64] + 100] = mem[s + _12981 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12957) <= _12957:
                    _17926 = mem[64]
                    mem[mem[64]] = ceil32(_12957) + 68
                    mem[64] = ceil32(_12957) + mem[64] + 100
                    _17966 = mem[_10420]
                    s = 0
                    while s < _17966:
                        mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _10420 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17966) <= _17966:
                        mem[_17926 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15606 + 100 len _17966])) or mem[_17926 + 36 len 28]
                        _20452 = mem[_17926]
                        s = 0
                        while s < _20452:
                            mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _17926 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20452) <= _20452:
                            delegate address(_10399).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20452 + ceil32(_12957) + _15606 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22568 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22824 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22824:
                                    mem[idx + _22568 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22824) > _22824:
                                    mem[_22824 + _22568 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22824) + _22568 + -mem[64] + 68
                            _22352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22352] = return_data.size
                            mem[_22352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22569 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22569 + 68] = mem[idx + _22352 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22569 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22569 + -mem[64] + 68
                        mem[_20452 + ceil32(_12957) + _15606 + 100] = 0
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20452 + ceil32(_12957) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22570 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22826 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22826:
                                mem[idx + _22570 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22826) > _22826:
                                mem[_22826 + _22570 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22826) + _22570 + -mem[64] + 68
                        _22353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22353] = return_data.size
                        mem[_22353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22571 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22571 + 68] = mem[idx + _22353 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22571 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22571 + -mem[64] + 68
                    mem[_17966 + ceil32(_12957) + _15606 + 100] = 0
                    mem[_17926 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15606 + 100 len _17966])) or mem[_17926 + 36 len 28]
                    _20453 = mem[_17926]
                    s = 0
                    while s < _20453:
                        mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _17926 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20453) <= _20453:
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20453 + ceil32(_12957) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22572 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22828 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22828:
                                mem[idx + _22572 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22828) > _22828:
                                mem[_22828 + _22572 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22828) + _22572 + -mem[64] + 68
                        _22354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22354] = return_data.size
                        mem[_22354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22573 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22573 + 68] = mem[idx + _22354 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22573 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22573 + -mem[64] + 68
                    mem[_20453 + ceil32(_12957) + _15606 + 100] = 0
                    delegate address(_10399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20453 + ceil32(_12957) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22574 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22830 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22830:
                            mem[idx + _22574 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22830) > _22830:
                            mem[_22830 + _22574 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22830) + _22574 + -mem[64] + 68
                    _22355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22355] = return_data.size
                    mem[_22355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22575 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22575 + 68] = mem[idx + _22355 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22575 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22575 + -mem[64] + 68
                mem[_12957 + mem[64] + 100] = 0
                _17927 = mem[64]
                mem[mem[64]] = ceil32(_12957) + 68
                mem[64] = ceil32(_12957) + mem[64] + 100
                _17967 = mem[_10420]
                s = 0
                while s < _17967:
                    mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _10420 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17967) <= _17967:
                    mem[_17927 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15606 + 100 len _17967])) or mem[_17927 + 36 len 28]
                    _20454 = mem[_17927]
                    s = 0
                    while s < _20454:
                        mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _17927 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20454) <= _20454:
                        delegate address(_10399).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20454 + ceil32(_12957) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22832 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22832:
                                mem[idx + _22576 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22832) > _22832:
                                mem[_22832 + _22576 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22832) + _22576 + -mem[64] + 68
                        _22356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22356] = return_data.size
                        mem[_22356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22577 + 68] = mem[idx + _22356 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22577 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22577 + -mem[64] + 68
                    mem[_20454 + ceil32(_12957) + _15606 + 100] = 0
                    delegate address(_10399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20454 + ceil32(_12957) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22834 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22834:
                            mem[idx + _22578 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22834) > _22834:
                            mem[_22834 + _22578 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22834) + _22578 + -mem[64] + 68
                    _22357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22357] = return_data.size
                    mem[_22357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22579 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22579 + 68] = mem[idx + _22357 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22579 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22579 + -mem[64] + 68
                mem[_17967 + ceil32(_12957) + _15606 + 100] = 0
                mem[_17927 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15606 + 100 len _17967])) or mem[_17927 + 36 len 28]
                _20455 = mem[_17927]
                s = 0
                while s < _20455:
                    mem[s + ceil32(_12957) + _15606 + 100] = mem[s + _17927 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20455) <= _20455:
                    delegate address(_10399).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20455 + ceil32(_12957) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22580 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22836 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22836:
                            mem[idx + _22580 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22836) > _22836:
                            mem[_22836 + _22580 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22836) + _22580 + -mem[64] + 68
                    _22358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22358] = return_data.size
                    mem[_22358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22581 + 68] = mem[idx + _22358 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22581 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22581 + -mem[64] + 68
                mem[_20455 + ceil32(_12957) + _15606 + 100] = 0
                delegate address(_10399).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20455 + ceil32(_12957) + _15606 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22582 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22838 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22838:
                        mem[idx + _22582 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22838) > _22838:
                        mem[_22838 + _22582 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22838) + _22582 + -mem[64] + 68
                _22359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22359] = return_data.size
                mem[_22359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22583 + 68] = mem[idx + _22359 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22583 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22583 + -mem[64] + 68
            if idx >= mem[_5176]:
                revert with 'NH{q', 50
            stor104 = mem[(32 * idx) + _5176 + 44 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 128]:
                _10388 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _10389 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 64
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
                _10402 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] <= test266151307()
                require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
                _10412 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32]
                if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32] > test266151307():
                    revert with 'NH{q', 65
                _10421 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] + 32])) + 1
                mem[_10421] = _10412
                require _10402 + _10412 + 64 <= _10389 + 32
                s = 0
                while s < _10412:
                    mem[s + _10421 + 32] = mem[s + _10388 + _10402 + 64]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_10412) <= _10412:
                    require _10412 >= 128
                    _12966 = mem[_10421 + 32]
                    require mem[_10421 + 32] == mem[_10421 + 44 len 20]
                    _12974 = mem[_10421 + 64]
                    require mem[_10421 + 64] == Mask(32, 224, mem[_10421 + 64])
                    _12996 = mem[_10421 + 96]
                    _12997 = mem[_10421 + 128]
                    require mem[_10421 + 128] <= test266151307()
                    require _10421 + mem[_10421 + 128] + 63 < _10421 + _10412 + 32
                    _13006 = mem[_10421 + mem[_10421 + 128] + 32]
                    if mem[_10421 + mem[_10421 + 128] + 32] > test266151307():
                        revert with 'NH{q', 65
                    _13022 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1
                    mem[_13022] = _13006
                    require _12997 + _13006 + 64 <= _10412 + 32
                    s = 0
                    while s < _13006:
                        mem[s + _13022 + 32] = mem[s + _10421 + _12997 + 64]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13006) <= _13006:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12966)
                        mem[mem[64] + 36] = Mask(32, 224, _12974)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13006
                        s = 0
                        while s < _13006:
                            mem[s + mem[64] + 132] = mem[s + _13022 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_13006) <= _13006:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12996 wei
                                 gas gas_remaining wei
                                args address(_12966), Mask(32, 224, _12974), Array(len=_13006, data=mem[mem[64] + 132 len ceil32(_13006)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18000 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18056 = mem[_18000]
                            require mem[_18000] <= test266151307()
                            require _18000 + mem[_18000] + 31 < _18000 + return_data.size
                            _18288 = mem[_18000 + mem[_18000]]
                            if mem[_18000 + mem[_18000]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(ceil32(mem[_18000 + mem[_18000]])) + 1 < 0 or _18000 + ceil32(return_data.size) + ceil32(ceil32(mem[_18000 + mem[_18000]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _18000 + ceil32(return_data.size) + ceil32(ceil32(mem[_18000 + mem[_18000]])) + 1
                            mem[_18000 + ceil32(return_data.size)] = _18288
                            require _18056 + _18288 + 32 <= return_data.size
                            s = 0
                            while s < _18288:
                                mem[s + _18000 + ceil32(return_data.size) + 32] = mem[s + _18000 + _18056 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_18288) > _18288:
                                mem[_18288 + _18000 + ceil32(return_data.size) + 32] = 0
                            if ceil32(_18288) == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = ceil32(_18288) + 1
                            continue 
                        mem[_13006 + mem[64] + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _12996 wei
                             gas gas_remaining wei
                            args address(_12966), Mask(32, 224, _12974), Array(len=_13006, data=mem[mem[64] + 132 len ceil32(_13006)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18001 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18057 = mem[_18001]
                        require mem[_18001] <= test266151307()
                        require _18001 + mem[_18001] + 31 < _18001 + return_data.size
                        _18289 = mem[_18001 + mem[_18001]]
                        if mem[_18001 + mem[_18001]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_18001 + mem[_18001]])) + 1 < 0 or _18001 + ceil32(return_data.size) + ceil32(ceil32(mem[_18001 + mem[_18001]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _18001 + ceil32(return_data.size) + ceil32(ceil32(mem[_18001 + mem[_18001]])) + 1
                        mem[_18001 + ceil32(return_data.size)] = _18289
                        require _18057 + _18289 + 32 <= return_data.size
                        s = 0
                        while s < _18289:
                            mem[s + _18001 + ceil32(return_data.size) + 32] = mem[s + _18001 + _18057 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18289) > _18289:
                            mem[_18289 + _18001 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18289) == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18289) + 1
                        continue 
                    mem[_13006 + _13022 + 32] = 0
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_12966)
                    mem[mem[64] + 36] = Mask(32, 224, _12974)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13006
                    s = 0
                    while s < _13006:
                        mem[s + mem[64] + 132] = mem[s + _13022 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13006) <= _13006:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _12996 wei
                             gas gas_remaining wei
                            args address(_12966), Mask(32, 224, _12974), Array(len=_13006, data=mem[mem[64] + 132 len ceil32(_13006)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18002 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18058 = mem[_18002]
                        require mem[_18002] <= test266151307()
                        require _18002 + mem[_18002] + 31 < _18002 + return_data.size
                        _18290 = mem[_18002 + mem[_18002]]
                        if mem[_18002 + mem[_18002]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_18002 + mem[_18002]])) + 1 < 0 or _18002 + ceil32(return_data.size) + ceil32(ceil32(mem[_18002 + mem[_18002]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _18002 + ceil32(return_data.size) + ceil32(ceil32(mem[_18002 + mem[_18002]])) + 1
                        mem[_18002 + ceil32(return_data.size)] = _18290
                        require _18058 + _18290 + 32 <= return_data.size
                        s = 0
                        while s < _18290:
                            mem[s + _18002 + ceil32(return_data.size) + 32] = mem[s + _18002 + _18058 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18290) > _18290:
                            mem[_18290 + _18002 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18290) == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18290) + 1
                        continue 
                    mem[_13006 + mem[64] + 132] = 0
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).0xd098d39a with:
                       value _12996 wei
                         gas gas_remaining wei
                        args address(_12966), Mask(32, 224, _12974), Array(len=_13006, data=mem[mem[64] + 132 len ceil32(_13006)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18003 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18059 = mem[_18003]
                    require mem[_18003] <= test266151307()
                    require _18003 + mem[_18003] + 31 < _18003 + return_data.size
                    _18291 = mem[_18003 + mem[_18003]]
                    if mem[_18003 + mem[_18003]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_18003 + mem[_18003]])) + 1 < 0 or _18003 + ceil32(return_data.size) + ceil32(ceil32(mem[_18003 + mem[_18003]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _18003 + ceil32(return_data.size) + ceil32(ceil32(mem[_18003 + mem[_18003]])) + 1
                    mem[_18003 + ceil32(return_data.size)] = _18291
                    require _18059 + _18291 + 32 <= return_data.size
                    s = 0
                    while s < _18291:
                        mem[s + _18003 + ceil32(return_data.size) + 32] = mem[s + _18003 + _18059 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18291) > _18291:
                        mem[_18291 + _18003 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18291) == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18291) + 1
                    continue 
                mem[_10412 + _10421 + 32] = 0
                require _10412 >= 128
                _12967 = mem[_10421 + 32]
                require mem[_10421 + 32] == mem[_10421 + 44 len 20]
                _12975 = mem[_10421 + 64]
                require mem[_10421 + 64] == Mask(32, 224, mem[_10421 + 64])
                _12998 = mem[_10421 + 96]
                _12999 = mem[_10421 + 128]
                require mem[_10421 + 128] <= test266151307()
                require _10421 + mem[_10421 + 128] + 63 < _10421 + _10412 + 32
                _13007 = mem[_10421 + mem[_10421 + 128] + 32]
                if mem[_10421 + mem[_10421 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _13023 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10421 + mem[_10421 + 128] + 32])) + 1
                mem[_13023] = _13007
                require _12999 + _13007 + 64 <= _10412 + 32
                s = 0
                while s < _13007:
                    mem[s + _13023 + 32] = mem[s + _10421 + _12999 + 64]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_13007) <= _13007:
                    _15486 = mem[64]
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_12967)
                    mem[mem[64] + 36] = Mask(32, 224, _12975)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13007
                    s = 0
                    while s < _13007:
                        mem[s + mem[64] + 132] = mem[s + _13023 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_13007) <= _13007:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _12998 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13007) + _15486 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18004 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18060 = mem[_18004]
                        require mem[_18004] <= test266151307()
                        require _18004 + mem[_18004] + 31 < _18004 + return_data.size
                        _18292 = mem[_18004 + mem[_18004]]
                        if mem[_18004 + mem[_18004]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_18004 + mem[_18004]])) + 1 < 0 or _18004 + ceil32(return_data.size) + ceil32(ceil32(mem[_18004 + mem[_18004]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _18004 + ceil32(return_data.size) + ceil32(ceil32(mem[_18004 + mem[_18004]])) + 1
                        mem[_18004 + ceil32(return_data.size)] = _18292
                        require _18060 + _18292 + 32 <= return_data.size
                        s = 0
                        while s < _18292:
                            mem[s + _18004 + ceil32(return_data.size) + 32] = mem[s + _18004 + _18060 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_18292) > _18292:
                            mem[_18292 + _18004 + ceil32(return_data.size) + 32] = 0
                        if ceil32(_18292) == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = ceil32(_18292) + 1
                        continue 
                    mem[_13007 + _15486 + 132] = 0
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).mem[mem[64] len 4] with:
                       value _12998 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_13007) + _15486 + -mem[64] + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18005 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18061 = mem[_18005]
                    require mem[_18005] <= test266151307()
                    require _18005 + mem[_18005] + 31 < _18005 + return_data.size
                    _18293 = mem[_18005 + mem[_18005]]
                    if mem[_18005 + mem[_18005]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_18005 + mem[_18005]])) + 1 < 0 or _18005 + ceil32(return_data.size) + ceil32(ceil32(mem[_18005 + mem[_18005]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _18005 + ceil32(return_data.size) + ceil32(ceil32(mem[_18005 + mem[_18005]])) + 1
                    mem[_18005 + ceil32(return_data.size)] = _18293
                    require _18061 + _18293 + 32 <= return_data.size
                    s = 0
                    while s < _18293:
                        mem[s + _18005 + ceil32(return_data.size) + 32] = mem[s + _18005 + _18061 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18293) > _18293:
                        mem[_18293 + _18005 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18293) == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18293) + 1
                    continue 
                mem[_13007 + _13023 + 32] = 0
                _15487 = mem[64]
                mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_12967)
                mem[mem[64] + 36] = Mask(32, 224, _12975)
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = _13007
                s = 0
                while s < _13007:
                    mem[s + mem[64] + 132] = mem[s + _13023 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_13007) <= _13007:
                    require ext_code.size(address(stor103.field_0))
                    call address(stor103.field_0).mem[mem[64] len 4] with:
                       value _12998 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_13007) + _15487 + -mem[64] + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18006 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18062 = mem[_18006]
                    require mem[_18006] <= test266151307()
                    require _18006 + mem[_18006] + 31 < _18006 + return_data.size
                    _18294 = mem[_18006 + mem[_18006]]
                    if mem[_18006 + mem[_18006]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_18006 + mem[_18006]])) + 1 < 0 or _18006 + ceil32(return_data.size) + ceil32(ceil32(mem[_18006 + mem[_18006]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _18006 + ceil32(return_data.size) + ceil32(ceil32(mem[_18006 + mem[_18006]])) + 1
                    mem[_18006 + ceil32(return_data.size)] = _18294
                    require _18062 + _18294 + 32 <= return_data.size
                    s = 0
                    while s < _18294:
                        mem[s + _18006 + ceil32(return_data.size) + 32] = mem[s + _18006 + _18062 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_18294) > _18294:
                        mem[_18294 + _18006 + ceil32(return_data.size) + 32] = 0
                    if ceil32(_18294) == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = ceil32(_18294) + 1
                    continue 
                mem[_13007 + _15487 + 132] = 0
                require ext_code.size(address(stor103.field_0))
                call address(stor103.field_0).mem[mem[64] len 4] with:
                   value _12998 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_13007) + _15487 + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18007 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _18063 = mem[_18007]
                require mem[_18007] <= test266151307()
                require _18007 + mem[_18007] + 31 < _18007 + return_data.size
                _18295 = mem[_18007 + mem[_18007]]
                if mem[_18007 + mem[_18007]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_18007 + mem[_18007]])) + 1 < 0 or _18007 + ceil32(return_data.size) + ceil32(ceil32(mem[_18007 + mem[_18007]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _18007 + ceil32(return_data.size) + ceil32(ceil32(mem[_18007 + mem[_18007]])) + 1
                mem[_18007 + ceil32(return_data.size)] = _18295
                require _18063 + _18295 + 32 <= return_data.size
                s = 0
                while s < _18295:
                    mem[s + _18007 + ceil32(return_data.size) + 32] = mem[s + _18007 + _18063 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_18295) > _18295:
                    mem[_18295 + _18007 + ceil32(return_data.size) + 32] = 0
                if ceil32(_18295) == -1:
                    revert with 'NH{q', 17
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = ceil32(_18295) + 1
                continue 
            _10390 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            _10391 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= 128
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 44 len 20]
            _10403 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64] == mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 76 len 20]
            _10413 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96]
            require mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] <= test266151307()
            require mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 63 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] + 32
            _10415 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32]
            if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32] > test266151307():
                revert with 'NH{q', 65
            _10423 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96] + 32])) + 1
            mem[_10423] = _10415
            require _10413 + _10415 + 64 <= _10391 + 32
            s = 0
            while s < _10415:
                mem[s + _10423 + 32] = mem[s + _10390 + _10413 + 64]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_10415) <= _10415:
                _12942 = mem[_10390 + 128]
                require mem[_10390 + 128] <= test266151307()
                require _10390 + mem[_10390 + 128] + 63 < _10390 + _10391 + 32
                _12958 = mem[_10390 + mem[_10390 + 128] + 32]
                if mem[_10390 + mem[_10390 + 128] + 32] > test266151307():
                    revert with 'NH{q', 65
                _12982 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1
                mem[_12982] = _12958
                require _12942 + _12958 + 64 <= _10391 + 32
                s = 0
                while s < _12958:
                    mem[s + _12982 + 32] = mem[s + _10390 + _12942 + 64]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12958) <= _12958:
                    mem[mem[64] + 4] = address(_10403)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10403)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15524] == bool(mem[_15524])
                    if not mem[_15524]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15616 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12958
                    s = 0
                    while s < _12958:
                        mem[s + mem[64] + 100] = mem[s + _12982 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_12958) <= _12958:
                        _17936 = mem[64]
                        mem[mem[64]] = ceil32(_12958) + 68
                        mem[64] = ceil32(_12958) + mem[64] + 100
                        _17968 = mem[_10423]
                        s = 0
                        while s < _17968:
                            mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _10423 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_17968) <= _17968:
                            mem[_17936 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15616 + 100 len _17968])) or mem[_17936 + 36 len 28]
                            _20456 = mem[_17936]
                            s = 0
                            while s < _20456:
                                mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _17936 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                s = s + 32
                                continue 
                            if ceil32(_20456) <= _20456:
                                delegate address(_10403).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20456 + ceil32(_12958) + _15616 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 1
                                        continue 
                                    _22584 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _22840 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _22840:
                                        mem[idx + _22584 + 68] = mem[idx + 128]
                                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_22840) > _22840:
                                        mem[_22840 + _22584 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_22840) + _22584 + -mem[64] + 68
                                _22360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22360] = return_data.size
                                mem[_22360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22585 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22585 + 68] = mem[idx + _22360 + 32]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22585 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22585 + -mem[64] + 68
                            mem[_20456 + ceil32(_12958) + _15616 + 100] = 0
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20456 + ceil32(_12958) + _15616 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22586 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22842 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22842:
                                    mem[idx + _22586 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22842) > _22842:
                                    mem[_22842 + _22586 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22842) + _22586 + -mem[64] + 68
                            _22361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22361] = return_data.size
                            mem[_22361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22587 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22587 + 68] = mem[idx + _22361 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22587 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22587 + -mem[64] + 68
                        mem[_17968 + ceil32(_12958) + _15616 + 100] = 0
                        mem[_17936 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15616 + 100 len _17968])) or mem[_17936 + 36 len 28]
                        _20457 = mem[_17936]
                        s = 0
                        while s < _20457:
                            mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _17936 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20457) <= _20457:
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20457 + ceil32(_12958) + _15616 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22588 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22844 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22844:
                                    mem[idx + _22588 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22844) > _22844:
                                    mem[_22844 + _22588 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22844) + _22588 + -mem[64] + 68
                            _22362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22362] = return_data.size
                            mem[_22362 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22589 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22589 + 68] = mem[idx + _22362 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22589 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22589 + -mem[64] + 68
                        mem[_20457 + ceil32(_12958) + _15616 + 100] = 0
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20457 + ceil32(_12958) + _15616 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22590 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22846 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22846:
                                mem[idx + _22590 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22846) > _22846:
                                mem[_22846 + _22590 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22846) + _22590 + -mem[64] + 68
                        _22363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22363] = return_data.size
                        mem[_22363 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22591 + 68] = mem[idx + _22363 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22591 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22591 + -mem[64] + 68
                    mem[_12958 + mem[64] + 100] = 0
                    _17937 = mem[64]
                    mem[mem[64]] = ceil32(_12958) + 68
                    mem[64] = ceil32(_12958) + mem[64] + 100
                    _17969 = mem[_10423]
                    s = 0
                    while s < _17969:
                        mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17969) <= _17969:
                        mem[_17937 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15616 + 100 len _17969])) or mem[_17937 + 36 len 28]
                        _20458 = mem[_17937]
                        s = 0
                        while s < _20458:
                            mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _17937 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20458) <= _20458:
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20458 + ceil32(_12958) + _15616 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22592 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22848 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22848:
                                    mem[idx + _22592 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22848) > _22848:
                                    mem[_22848 + _22592 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22848) + _22592 + -mem[64] + 68
                            _22364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22364] = return_data.size
                            mem[_22364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22593 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22593 + 68] = mem[idx + _22364 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22593 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22593 + -mem[64] + 68
                        mem[_20458 + ceil32(_12958) + _15616 + 100] = 0
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20458 + ceil32(_12958) + _15616 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22594 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22850 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22850:
                                mem[idx + _22594 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22850) > _22850:
                                mem[_22850 + _22594 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22850) + _22594 + -mem[64] + 68
                        _22365 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22365] = return_data.size
                        mem[_22365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22595 + 68] = mem[idx + _22365 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22595 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22595 + -mem[64] + 68
                    mem[_17969 + ceil32(_12958) + _15616 + 100] = 0
                    mem[_17937 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15616 + 100 len _17969])) or mem[_17937 + 36 len 28]
                    _20459 = mem[_17937]
                    s = 0
                    while s < _20459:
                        mem[s + ceil32(_12958) + _15616 + 100] = mem[s + _17937 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20459) <= _20459:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20459 + ceil32(_12958) + _15616 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22852 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22852:
                                mem[idx + _22596 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22852) > _22852:
                                mem[_22852 + _22596 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22852) + _22596 + -mem[64] + 68
                        _22366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22366] = return_data.size
                        mem[_22366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22597 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22597 + 68] = mem[idx + _22366 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22597 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22597 + -mem[64] + 68
                    mem[_20459 + ceil32(_12958) + _15616 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20459 + ceil32(_12958) + _15616 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22598 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22854 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22854:
                            mem[idx + _22598 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22854) > _22854:
                            mem[_22854 + _22598 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22854) + _22598 + -mem[64] + 68
                    _22367 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22367] = return_data.size
                    mem[_22367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22599 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22599 + 68] = mem[idx + _22367 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22599 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22599 + -mem[64] + 68
                mem[_12958 + _12982 + 32] = 0
                mem[mem[64] + 4] = address(_10403)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10403)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15525] == bool(mem[_15525])
                if not mem[_15525]:
                    revert with 0, 'Invalid after adapter verification!'
                _15618 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12958
                s = 0
                while s < _12958:
                    mem[s + mem[64] + 100] = mem[s + _12982 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12958) <= _12958:
                    _17938 = mem[64]
                    mem[mem[64]] = ceil32(_12958) + 68
                    mem[64] = ceil32(_12958) + mem[64] + 100
                    _17970 = mem[_10423]
                    s = 0
                    while s < _17970:
                        mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17970) <= _17970:
                        mem[_17938 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15618 + 100 len _17970])) or mem[_17938 + 36 len 28]
                        _20460 = mem[_17938]
                        s = 0
                        while s < _20460:
                            mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _17938 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20460) <= _20460:
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20460 + ceil32(_12958) + _15618 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22600 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22856 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22856:
                                    mem[idx + _22600 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22856) > _22856:
                                    mem[_22856 + _22600 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22856) + _22600 + -mem[64] + 68
                            _22368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22368] = return_data.size
                            mem[_22368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22601 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22601 + 68] = mem[idx + _22368 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22601 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22601 + -mem[64] + 68
                        mem[_20460 + ceil32(_12958) + _15618 + 100] = 0
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20460 + ceil32(_12958) + _15618 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22602 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22858 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22858:
                                mem[idx + _22602 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22858) > _22858:
                                mem[_22858 + _22602 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22858) + _22602 + -mem[64] + 68
                        _22369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22369] = return_data.size
                        mem[_22369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22603 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22603 + 68] = mem[idx + _22369 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22603 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22603 + -mem[64] + 68
                    mem[_17970 + ceil32(_12958) + _15618 + 100] = 0
                    mem[_17938 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15618 + 100 len _17970])) or mem[_17938 + 36 len 28]
                    _20461 = mem[_17938]
                    s = 0
                    while s < _20461:
                        mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _17938 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20461) <= _20461:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20461 + ceil32(_12958) + _15618 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22604 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22860 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22860:
                                mem[idx + _22604 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22860) > _22860:
                                mem[_22860 + _22604 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22860) + _22604 + -mem[64] + 68
                        _22370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22370] = return_data.size
                        mem[_22370 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22605 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22605 + 68] = mem[idx + _22370 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22605 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22605 + -mem[64] + 68
                    mem[_20461 + ceil32(_12958) + _15618 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20461 + ceil32(_12958) + _15618 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22862 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22862:
                            mem[idx + _22606 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22862) > _22862:
                            mem[_22862 + _22606 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22862) + _22606 + -mem[64] + 68
                    _22371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22371] = return_data.size
                    mem[_22371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22607 + 68] = mem[idx + _22371 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22607 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22607 + -mem[64] + 68
                mem[_12958 + mem[64] + 100] = 0
                _17939 = mem[64]
                mem[mem[64]] = ceil32(_12958) + 68
                mem[64] = ceil32(_12958) + mem[64] + 100
                _17971 = mem[_10423]
                s = 0
                while s < _17971:
                    mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _10423 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17971) <= _17971:
                    mem[_17939 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15618 + 100 len _17971])) or mem[_17939 + 36 len 28]
                    _20462 = mem[_17939]
                    s = 0
                    while s < _20462:
                        mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _17939 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20462) <= _20462:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20462 + ceil32(_12958) + _15618 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22608 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22864 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22864:
                                mem[idx + _22608 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22864) > _22864:
                                mem[_22864 + _22608 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22864) + _22608 + -mem[64] + 68
                        _22372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22372] = return_data.size
                        mem[_22372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22609 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22609 + 68] = mem[idx + _22372 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22609 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22609 + -mem[64] + 68
                    mem[_20462 + ceil32(_12958) + _15618 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20462 + ceil32(_12958) + _15618 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22866 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22866:
                            mem[idx + _22610 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22866) > _22866:
                            mem[_22866 + _22610 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22866) + _22610 + -mem[64] + 68
                    _22373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22373] = return_data.size
                    mem[_22373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22611 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22611 + 68] = mem[idx + _22373 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22611 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22611 + -mem[64] + 68
                mem[_17971 + ceil32(_12958) + _15618 + 100] = 0
                mem[_17939 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15618 + 100 len _17971])) or mem[_17939 + 36 len 28]
                _20463 = mem[_17939]
                s = 0
                while s < _20463:
                    mem[s + ceil32(_12958) + _15618 + 100] = mem[s + _17939 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20463) <= _20463:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20463 + ceil32(_12958) + _15618 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22868 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22868:
                            mem[idx + _22612 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22868) > _22868:
                            mem[_22868 + _22612 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22868) + _22612 + -mem[64] + 68
                    _22374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22374] = return_data.size
                    mem[_22374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22613 + 68] = mem[idx + _22374 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22613 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22613 + -mem[64] + 68
                mem[_20463 + ceil32(_12958) + _15618 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20463 + ceil32(_12958) + _15618 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22614 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22870 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22870:
                        mem[idx + _22614 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22870) > _22870:
                        mem[_22870 + _22614 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22870) + _22614 + -mem[64] + 68
                _22375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22375] = return_data.size
                mem[_22375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22615 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22615 + 68] = mem[idx + _22375 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22615 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22615 + -mem[64] + 68
            mem[_10415 + _10423 + 32] = 0
            _12943 = mem[_10390 + 128]
            require mem[_10390 + 128] <= test266151307()
            require _10390 + mem[_10390 + 128] + 63 < _10390 + _10391 + 32
            _12959 = mem[_10390 + mem[_10390 + 128] + 32]
            if mem[_10390 + mem[_10390 + 128] + 32] > test266151307():
                revert with 'NH{q', 65
            _12983 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_10390 + mem[_10390 + 128] + 32])) + 1
            mem[_12983] = _12959
            require _12943 + _12959 + 64 <= _10391 + 32
            s = 0
            while s < _12959:
                mem[s + _12983 + 32] = mem[s + _10390 + _12943 + 64]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_12959) <= _12959:
                mem[mem[64] + 4] = address(_10403)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10403)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15526] == bool(mem[_15526])
                if not mem[_15526]:
                    revert with 0, 'Invalid after adapter verification!'
                _15620 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12959
                s = 0
                while s < _12959:
                    mem[s + mem[64] + 100] = mem[s + _12983 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_12959) <= _12959:
                    _17940 = mem[64]
                    mem[mem[64]] = ceil32(_12959) + 68
                    mem[64] = ceil32(_12959) + mem[64] + 100
                    _17972 = mem[_10423]
                    s = 0
                    while s < _17972:
                        mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_17972) <= _17972:
                        mem[_17940 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15620 + 100 len _17972])) or mem[_17940 + 36 len 28]
                        _20464 = mem[_17940]
                        s = 0
                        while s < _20464:
                            mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _17940 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            s = s + 32
                            continue 
                        if ceil32(_20464) <= _20464:
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20464 + ceil32(_12959) + _15620 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 1
                                    continue 
                                _22616 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _22872 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _22872:
                                    mem[idx + _22616 + 68] = mem[idx + 128]
                                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_22872) > _22872:
                                    mem[_22872 + _22616 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_22872) + _22616 + -mem[64] + 68
                            _22376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_22376] = return_data.size
                            mem[_22376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22617 + 68] = mem[idx + _22376 + 32]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22617 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22617 + -mem[64] + 68
                        mem[_20464 + ceil32(_12959) + _15620 + 100] = 0
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20464 + ceil32(_12959) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22874 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22874:
                                mem[idx + _22618 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22874) > _22874:
                                mem[_22874 + _22618 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22874) + _22618 + -mem[64] + 68
                        _22377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22377] = return_data.size
                        mem[_22377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22619 + 68] = mem[idx + _22377 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22619 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22619 + -mem[64] + 68
                    mem[_17972 + ceil32(_12959) + _15620 + 100] = 0
                    mem[_17940 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15620 + 100 len _17972])) or mem[_17940 + 36 len 28]
                    _20465 = mem[_17940]
                    s = 0
                    while s < _20465:
                        mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _17940 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20465) <= _20465:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20465 + ceil32(_12959) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22876 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22876:
                                mem[idx + _22620 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22876) > _22876:
                                mem[_22876 + _22620 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22876) + _22620 + -mem[64] + 68
                        _22378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22378] = return_data.size
                        mem[_22378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22621 + 68] = mem[idx + _22378 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22621 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22621 + -mem[64] + 68
                    mem[_20465 + ceil32(_12959) + _15620 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20465 + ceil32(_12959) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22622 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22878 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22878:
                            mem[idx + _22622 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22878) > _22878:
                            mem[_22878 + _22622 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22878) + _22622 + -mem[64] + 68
                    _22379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22379] = return_data.size
                    mem[_22379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22623 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22623 + 68] = mem[idx + _22379 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22623 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22623 + -mem[64] + 68
                mem[_12959 + mem[64] + 100] = 0
                _17941 = mem[64]
                mem[mem[64]] = ceil32(_12959) + 68
                mem[64] = ceil32(_12959) + mem[64] + 100
                _17973 = mem[_10423]
                s = 0
                while s < _17973:
                    mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _10423 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17973) <= _17973:
                    mem[_17941 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15620 + 100 len _17973])) or mem[_17941 + 36 len 28]
                    _20466 = mem[_17941]
                    s = 0
                    while s < _20466:
                        mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _17941 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20466) <= _20466:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20466 + ceil32(_12959) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22624 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22880 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22880:
                                mem[idx + _22624 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22880) > _22880:
                                mem[_22880 + _22624 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22880) + _22624 + -mem[64] + 68
                        _22380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22380] = return_data.size
                        mem[_22380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22625 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22625 + 68] = mem[idx + _22380 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22625 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22625 + -mem[64] + 68
                    mem[_20466 + ceil32(_12959) + _15620 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20466 + ceil32(_12959) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22626 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22882 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22882:
                            mem[idx + _22626 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22882) > _22882:
                            mem[_22882 + _22626 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22882) + _22626 + -mem[64] + 68
                    _22381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22381] = return_data.size
                    mem[_22381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22627 + 68] = mem[idx + _22381 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22627 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22627 + -mem[64] + 68
                mem[_17973 + ceil32(_12959) + _15620 + 100] = 0
                mem[_17941 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15620 + 100 len _17973])) or mem[_17941 + 36 len 28]
                _20467 = mem[_17941]
                s = 0
                while s < _20467:
                    mem[s + ceil32(_12959) + _15620 + 100] = mem[s + _17941 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20467) <= _20467:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20467 + ceil32(_12959) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22884 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22884:
                            mem[idx + _22628 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22884) > _22884:
                            mem[_22884 + _22628 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22884) + _22628 + -mem[64] + 68
                    _22382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22382] = return_data.size
                    mem[_22382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22629 + 68] = mem[idx + _22382 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22629 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22629 + -mem[64] + 68
                mem[_20467 + ceil32(_12959) + _15620 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20467 + ceil32(_12959) + _15620 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22630 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22886 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22886:
                        mem[idx + _22630 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22886) > _22886:
                        mem[_22886 + _22630 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22886) + _22630 + -mem[64] + 68
                _22383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22383] = return_data.size
                mem[_22383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22631 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22631 + 68] = mem[idx + _22383 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22631 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22631 + -mem[64] + 68
            mem[_12959 + _12983 + 32] = 0
            mem[mem[64] + 4] = address(_10403)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10403)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15527] == bool(mem[_15527])
            if not mem[_15527]:
                revert with 0, 'Invalid after adapter verification!'
            _15622 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _12959
            s = 0
            while s < _12959:
                mem[s + mem[64] + 100] = mem[s + _12983 + 32]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_12959) <= _12959:
                _17942 = mem[64]
                mem[mem[64]] = ceil32(_12959) + 68
                mem[64] = ceil32(_12959) + mem[64] + 100
                _17974 = mem[_10423]
                s = 0
                while s < _17974:
                    mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _10423 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_17974) <= _17974:
                    mem[_17942 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15622 + 100 len _17974])) or mem[_17942 + 36 len 28]
                    _20468 = mem[_17942]
                    s = 0
                    while s < _20468:
                        mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _17942 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        s = s + 32
                        continue 
                    if ceil32(_20468) <= _20468:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20468 + ceil32(_12959) + _15622 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 1
                                continue 
                            _22632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _22888 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _22888:
                                mem[idx + _22632 + 68] = mem[idx + 128]
                                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = idx + 32
                                continue 
                            if ceil32(_22888) > _22888:
                                mem[_22888 + _22632 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_22888) + _22632 + -mem[64] + 68
                        _22384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_22384] = return_data.size
                        mem[_22384 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22633 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22633 + 68] = mem[idx + _22384 + 32]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22633 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22633 + -mem[64] + 68
                    mem[_20468 + ceil32(_12959) + _15622 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20468 + ceil32(_12959) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22890 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22890:
                            mem[idx + _22634 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22890) > _22890:
                            mem[_22890 + _22634 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22890) + _22634 + -mem[64] + 68
                    _22385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22385] = return_data.size
                    mem[_22385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22635 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22635 + 68] = mem[idx + _22385 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22635 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22635 + -mem[64] + 68
                mem[_17974 + ceil32(_12959) + _15622 + 100] = 0
                mem[_17942 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15622 + 100 len _17974])) or mem[_17942 + 36 len 28]
                _20469 = mem[_17942]
                s = 0
                while s < _20469:
                    mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _17942 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20469) <= _20469:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20469 + ceil32(_12959) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22892 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22892:
                            mem[idx + _22636 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22892) > _22892:
                            mem[_22892 + _22636 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22892) + _22636 + -mem[64] + 68
                    _22386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22386] = return_data.size
                    mem[_22386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22637 + 68] = mem[idx + _22386 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22637 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22637 + -mem[64] + 68
                mem[_20469 + ceil32(_12959) + _15622 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20469 + ceil32(_12959) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22638 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22894 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22894:
                        mem[idx + _22638 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22894) > _22894:
                        mem[_22894 + _22638 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22894) + _22638 + -mem[64] + 68
                _22387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22387] = return_data.size
                mem[_22387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22639 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22639 + 68] = mem[idx + _22387 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22639 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22639 + -mem[64] + 68
            mem[_12959 + mem[64] + 100] = 0
            _17943 = mem[64]
            mem[mem[64]] = ceil32(_12959) + 68
            mem[64] = ceil32(_12959) + mem[64] + 100
            _17975 = mem[_10423]
            s = 0
            while s < _17975:
                mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _10423 + 32]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_17975) <= _17975:
                mem[_17943 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15622 + 100 len _17975])) or mem[_17943 + 36 len 28]
                _20470 = mem[_17943]
                s = 0
                while s < _20470:
                    mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _17943 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_20470) <= _20470:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20470 + ceil32(_12959) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 1
                            continue 
                        _22640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _22896 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _22896:
                            mem[idx + _22640 + 68] = mem[idx + 128]
                            _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = idx + 32
                            continue 
                        if ceil32(_22896) > _22896:
                            mem[_22896 + _22640 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_22896) + _22640 + -mem[64] + 68
                    _22388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_22388] = return_data.size
                    mem[_22388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22641 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22641 + 68] = mem[idx + _22388 + 32]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22641 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22641 + -mem[64] + 68
                mem[_20470 + ceil32(_12959) + _15622 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20470 + ceil32(_12959) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22642 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22898 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22898:
                        mem[idx + _22642 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22898) > _22898:
                        mem[_22898 + _22642 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22898) + _22642 + -mem[64] + 68
                _22389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22389] = return_data.size
                mem[_22389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22643 + 68] = mem[idx + _22389 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22643 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22643 + -mem[64] + 68
            mem[_17975 + ceil32(_12959) + _15622 + 100] = 0
            mem[_17943 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15622 + 100 len _17975])) or mem[_17943 + 36 len 28]
            _20471 = mem[_17943]
            s = 0
            while s < _20471:
                mem[s + ceil32(_12959) + _15622 + 100] = mem[s + _17943 + 32]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                s = s + 32
                continue 
            if ceil32(_20471) <= _20471:
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20471 + ceil32(_12959) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 1
                        continue 
                    _22644 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _22900 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _22900:
                        mem[idx + _22644 + 68] = mem[idx + 128]
                        _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = idx + 32
                        continue 
                    if ceil32(_22900) > _22900:
                        mem[_22900 + _22644 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_22900) + _22644 + -mem[64] + 68
                _22390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22390] = return_data.size
                mem[_22390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22645 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22645 + 68] = mem[idx + _22390 + 32]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22645 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22645 + -mem[64] + 68
            mem[_20471 + ceil32(_12959) + _15622 + 100] = 0
            delegate address(_10403).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _20471 + ceil32(_12959) + _15622 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    continue 
                _22646 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _22902 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _22902:
                    mem[idx + _22646 + 68] = mem[idx + 128]
                    _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 32
                    continue 
                if ceil32(_22902) > _22902:
                    mem[_22902 + _22646 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_22902) + _22646 + -mem[64] + 68
            _22391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_22391] = return_data.size
            mem[_22391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 'NH{q', 17
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = idx + 1
                continue 
            _22647 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _22647 + 68] = mem[idx + _22391 + 32]
                _10347 = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _22647 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _22647 + -mem[64] + 68
}



}
