contract main {




// =====================  Runtime code  =====================


#
#  - approve(address arg1, address arg2, uint256 arg3)
#
const version = 1


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
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
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d42c0e55(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    emit OwnershipTransferred(owner, msg.sender);
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
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAsset(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 != owner:
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
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'not enough token balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b6e7cc44(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor103.field_160):
        revert with 0, 'Not allowed!'
    if arg3 > !msg.value:
        revert with 0, 17
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
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
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
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Permission verification failed!'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ceil32(arg3.length) + 68
    mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg3.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228] = 0
    mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len floor32(ceil32(arg3.length) + 99)] = Mask(32, 224, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)) >> 224, 0, 0, arg3.length, arg3[all], Mask(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68, -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg3.length) + arg3.length + 28, 0, 0), mem[ceil32(arg2.length) + ceil32(return_data.size) + arg3.length + 260 len (4 * ceil32(arg3.length)) + -arg3.length + 36]
    if delegate.return_code:
    if not return_data.size:
        revert with 0, 32, arg2.length, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    revert with 0, 
                32,
                return_data.size,
                ext_call.return_data[0 len return_data.size],
                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
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
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor102[address(arg1)] = 1
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        stor102[address(arg1)] = 1
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_49f961d6Address = arg2
        emit 0xeca794cf: sub_49f961d6Address, arg2
        address(stor103.field_0) = arg3
        emit NewAccount(address(arg1), this.address);
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        sub_49f961d6Address = arg2
        emit 0xeca794cf: sub_49f961d6Address, arg2
        uint8(stor0.field_8) = 0
        address(stor103.field_0) = arg3
        emit NewAccount(address(arg1), this.address);
        uint8(stor0.field_8) = 0
}

function sub_8db2bc2b(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit OwnershipTransferred(owner, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[36]) == owner:
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'withdraw length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if eth.balance(this.address) < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'not enough AVAX balance'
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                _325 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _328 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                s = 0
                while s < mem[_328]:
                    s = s + 32
                    continue 
                if ceil32(mem[_328]) <= mem[_328]:
                    call address(cd[36]) with:
                       value _325 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_328] + _328 + -mem[64] + 28]
                    if return_data.size:
                        _396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_396] = return_data.size
                        mem[_396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_328] + _328 + 32] = 0
                    call address(cd[36]) with:
                       value _325 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_328] + _328 + -mem[64] + 28]
                    if return_data.size:
                        _397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_397] = return_data.size
                        mem[_397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'helper::safeTransferAVAX: AVAX transfer failed'
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                _314 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_314))
                staticcall address(_314).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if mem[_334] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'not enough token balance'
                if idx >= mem[96]:
                    revert with 0, 50
                _350 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                _358 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _358
                require ext_code.size(address(_350))
                call address(_350).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), _358
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_378] == bool(mem[_378])
            if idx == -1:
                revert with 0, 17
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
                revert with 0, 50
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if eth.balance(this.address) < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'not enough AVAX balance'
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                _327 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _331 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                s = 0
                while s < mem[_331]:
                    s = s + 32
                    continue 
                if ceil32(mem[_331]) <= mem[_331]:
                    call address(cd[36]) with:
                       value _327 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_331] + _331 + -mem[64] + 28]
                    if return_data.size:
                        _398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_398] = return_data.size
                        mem[_398 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[_331] + _331 + 32] = 0
                    call address(cd[36]) with:
                       value _327 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_331] + _331 + -mem[64] + 28]
                    if return_data.size:
                        _399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_399] = return_data.size
                        mem[_399 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'helper::safeTransferAVAX: AVAX transfer failed'
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                _317 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_317))
                staticcall address(_317).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if mem[_336] < mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                    revert with 0, 'not enough token balance'
                if idx >= mem[96]:
                    revert with 0, 50
                _354 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                _363 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _363
                require ext_code.size(address(_354))
                call address(_354).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), _363
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_383] == bool(mem[_383])
            if idx == -1:
                revert with 0, 17
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
            revert with 0, 65
        if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 < 96 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 > test266151307():
            revert with 0, 65
        mem[96] = cd[(cd[4] + ('cd', 4)[3] + 36)]
        require ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 36)] + 68 <= ('cd', 4).length + 36
        mem[128 len cd[(cd[4] + ('cd', 4)[3] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]]
        mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + 128] = 0
        if ('cd', 4)[2] > !msg.value:
            revert with 0, 17
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 132] = address(('cd', 4)[0])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 164] = Mask(32, 224, ('cd', 4)[1])
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 196] = 96
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 228] = cd[(cd[4] + ('cd', 4)[3] + 36)]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 260 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + 128 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) - cd[(cd[4] + ('cd', 4)[3] + 36)]]
        if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) <= cd[(cd[4] + ('cd', 4)[3] + 36)]:
            require ext_code.size(address(stor103.field_0))
            call address(stor103.field_0) with:
               value ('cd', 4)[2] + msg.value wei
                 gas gas_remaining wei
                args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), Array(len=cd[(cd[4] + ('cd', 4)[3] + 36)], data=call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require 0, address(('cd', 4)[0]) << 64 <= test266151307()
            require ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 159 < ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + return_data.size + 128
            _89 = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]
            if mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 32 < 0 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160
            mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128] = _89
            require 0, address(('cd', 4)[0]) << 64 + _89 + 32 <= return_data.size
            mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_89)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 160 len ceil32(_89)]
            if ceil32(_89) <= _89:
                _145 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _89
                mem[mem[64] + 64 len ceil32(_89)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_89)]
                if ceil32(_89) <= _89:
                    return Array(len=_89, data=mem[mem[64] + 64 len ceil32(_89)])
                mem[_89 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_89) + _145 + -mem[64] + 64
            mem[_89 + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160] = 0
            _146 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _89
            mem[mem[64] + 64 len ceil32(_89)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_89)]
            if ceil32(_89) <= _89:
                return Array(len=_89, data=mem[mem[64] + 64 len ceil32(_89)])
            mem[_89 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_89) + _146 + -mem[64] + 64
        mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 260] = 0
        require ext_code.size(address(stor103.field_0))
        call address(stor103.field_0) with:
           value ('cd', 4)[2] + msg.value wei
             gas gas_remaining wei
            args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), Array(len=cd[(cd[4] + ('cd', 4)[3] + 36)], data=call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require 0, address(('cd', 4)[0]) << 64 <= test266151307()
        require ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 159 < ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + return_data.size + 128
        _90 = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]
        if mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128] > test266151307():
            revert with 0, 65
        if ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 32 < 0 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128] = _90
        require 0, address(('cd', 4)[0]) << 64 + _90 + 32 <= return_data.size
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_90)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 160 len ceil32(_90)]
        if ceil32(_90) <= _90:
            _147 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _90
            mem[mem[64] + 64 len ceil32(_90)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_90)]
            if ceil32(_90) <= _90:
                return Array(len=_90, data=mem[mem[64] + 64 len ceil32(_90)])
            mem[_90 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_90) + _147 + -mem[64] + 64
        mem[_90 + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160] = 0
        _148 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _90
        mem[mem[64] + 64 len ceil32(_90)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_90)]
        if ceil32(_90) <= _90:
            return Array(len=_90, data=mem[mem[64] + 64 len ceil32(_90)])
        mem[_90 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_90) + _148 + -mem[64] + 64
    if owner != msg.sender:
        revert with 0, 'Permit: caller is not the Permit'
    require ('cd', 4).length >= 128
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == Mask(32, 224, ('cd', 4)[1])
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[3] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 < 96 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 > test266151307():
        revert with 0, 65
    mem[96] = cd[(cd[4] + ('cd', 4)[3] + 36)]
    require ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 36)] + 68 <= ('cd', 4).length + 36
    mem[128 len cd[(cd[4] + ('cd', 4)[3] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]]
    mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + 128] = 0
    if ('cd', 4)[2] > !msg.value:
        revert with 0, 17
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 132] = address(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 164] = Mask(32, 224, ('cd', 4)[1])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 196] = 96
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 228] = cd[(cd[4] + ('cd', 4)[3] + 36)]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 260 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)])] = call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]], mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + 128 len ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) - cd[(cd[4] + ('cd', 4)[3] + 36)]]
    if ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) <= cd[(cd[4] + ('cd', 4)[3] + 36)]:
        require ext_code.size(address(stor103.field_0))
        call address(stor103.field_0) with:
           value ('cd', 4)[2] + msg.value wei
             gas gas_remaining wei
            args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), Array(len=cd[(cd[4] + ('cd', 4)[3] + 36)], data=call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require 0, address(('cd', 4)[0]) << 64 <= test266151307()
        require ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 159 < ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + return_data.size + 128
        _91 = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]
        if mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128] > test266151307():
            revert with 0, 65
        if ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 32 < 0 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128] = _91
        require 0, address(('cd', 4)[0]) << 64 + _91 + 32 <= return_data.size
        mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_91)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 160 len ceil32(_91)]
        if ceil32(_91) <= _91:
            _149 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _91
            mem[mem[64] + 64 len ceil32(_91)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_91)]
            if ceil32(_91) <= _91:
                return Array(len=_91, data=mem[mem[64] + 64 len ceil32(_91)])
            mem[_91 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_91) + _149 + -mem[64] + 64
        mem[_91 + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160] = 0
        _150 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _91
        mem[mem[64] + 64 len ceil32(_91)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_91)]
        if ceil32(_91) <= _91:
            return Array(len=_91, data=mem[mem[64] + 64 len ceil32(_91)])
        mem[_91 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_91) + _150 + -mem[64] + 64
    mem[cd[(cd[4] + ('cd', 4)[3] + 36)] + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 260] = 0
    require ext_code.size(address(stor103.field_0))
    call address(stor103.field_0) with:
       value ('cd', 4)[2] + msg.value wei
         gas gas_remaining wei
        args address(('cd', 4)[0]), Mask(32, 224, ('cd', 4)[1]), Array(len=cd[(cd[4] + ('cd', 4)[3] + 36)], data=call.data[cd[4] + ('cd', 4)[3] + 68 len cd[(cd[4] + ('cd', 4)[3] + 36)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require 0, address(('cd', 4)[0]) << 64 <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 159 < ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + return_data.size + 128
    _92 = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]
    if mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128] > test266151307():
        revert with 0, 65
    if ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 32 < 0 or ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + ceil32(mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 128]) + 160
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 128] = _92
    require 0, address(('cd', 4)[0]) << 64 + _92 + 32 <= return_data.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_92)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 0, address(('cd', 4)[0]) << 64 + 160 len ceil32(_92)]
    if ceil32(_92) <= _92:
        _151 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _92
        mem[mem[64] + 64 len ceil32(_92)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_92)]
        if ceil32(_92) <= _92:
            return Array(len=_92, data=mem[mem[64] + 64 len ceil32(_92)])
        mem[_92 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_92) + _151 + -mem[64] + 64
    mem[_92 + ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160] = 0
    _152 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _92
    mem[mem[64] + 64 len ceil32(_92)] = mem[ceil32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 160 len ceil32(_92)]
    if ceil32(_92) <= _92:
        return Array(len=_92, data=mem[mem[64] + 64 len ceil32(_92)])
    mem[_92 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_92) + _152 + -mem[64] + 64
}

function sub_887d3797(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sub_49f961d6Address == msg.sender:
        if ('cd', 4).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'approve length error.'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _9395 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _9403 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[mem[64] + 36] = _9403
            require ext_code.size(address(_9395))
            call address(_9395).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _9403
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _9409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9409] == bool(mem[_9409])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _9417 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[mem[64] + 68] = 0
            _9419 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_9419 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9419 + 36 len 28]
            mem[64] = _9417 + 164
            mem[_9417 + 100] = 32
            mem[_9417 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9395)):
                revert with 0, 'Address: call to non-contract'
            _9433 = mem[_9419]
            s = 0
            while s < _9433:
                mem[s + _9417 + 164] = mem[s + _9419 + 32]
                s = s + 32
                continue 
            if ceil32(_9433) <= _9433:
                call address(_9395).mem[_9417 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9417 + 168 len _9433 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9417 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9417 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9417 + 232] = mem[idx + _9417 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9417 + 232]
                    if not mem[96]:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11801 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11819 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9417 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9417 + 232] = _11819
                            mem[_9417 + 164] = 68
                            mem[_9417 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + 200 len 28]
                            mem[64] = _9417 + 328
                            mem[_9417 + 264] = 32
                            mem[_9417 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + 328] = mem[s + _9417 + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + 396] = 0
                            call address(_9395).mem[_9417 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + 396] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + 329
                                mem[_9417 + 328] = return_data.size
                                mem[_9417 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + 360] == bool(mem[_9417 + 360])
                                    if not mem[_9417 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9417 + 168] = this.address
                            mem[_9417 + 200] = address(_11801)
                            require ext_code.size(address(_9395))
                            staticcall address(_9395).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11801)
                            mem[_9417 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9417 + ceil32(return_data.size) + 200] = address(_11801)
                            mem[_9417 + ceil32(return_data.size) + 232] = _11819
                            mem[_9417 + ceil32(return_data.size) + 164] = 68
                            mem[_9417 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11801) << 64
                            mem[64] = _9417 + ceil32(return_data.size) + 328
                            mem[_9417 + ceil32(return_data.size) + 264] = 32
                            mem[_9417 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + ceil32(return_data.size) + 328] = mem[s + _9417 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + ceil32(return_data.size) + 396] = 0
                            call address(_9395).mem[_9417 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 396] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9417 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9417 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + ceil32(return_data.size) + 360] == bool(mem[_9417 + ceil32(return_data.size) + 360])
                                    if not mem[_9417 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11907 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11937 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9417 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9417 + 232] = _11937
                            mem[_9417 + 164] = 68
                            mem[_9417 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + 200 len 28]
                            mem[64] = _9417 + 328
                            mem[_9417 + 264] = 32
                            mem[_9417 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + 328] = mem[s + _9417 + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + 396] = 0
                            call address(_9395).mem[_9417 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + 396] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + 329
                                mem[_9417 + 328] = return_data.size
                                mem[_9417 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + 360] == bool(mem[_9417 + 360])
                                    if not mem[_9417 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9417 + 168] = this.address
                            mem[_9417 + 200] = address(_11907)
                            require ext_code.size(address(_9395))
                            staticcall address(_9395).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11907)
                            mem[_9417 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9417 + ceil32(return_data.size) + 200] = address(_11907)
                            mem[_9417 + ceil32(return_data.size) + 232] = _11937
                            mem[_9417 + ceil32(return_data.size) + 164] = 68
                            mem[_9417 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11907) << 64
                            mem[64] = _9417 + ceil32(return_data.size) + 328
                            mem[_9417 + ceil32(return_data.size) + 264] = 32
                            mem[_9417 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + ceil32(return_data.size) + 328] = mem[s + _9417 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + ceil32(return_data.size) + 396] = 0
                            call address(_9395).mem[_9417 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 396] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9417 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9417 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + ceil32(return_data.size) + 360] == bool(mem[_9417 + ceil32(return_data.size) + 360])
                                    if not mem[_9417 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_9417 + 164] = return_data.size
                mem[_9417 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9417 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9417 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9417 + ceil32(return_data.size) + 233] = mem[idx + _9417 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11803 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11822 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9417 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9417 + ceil32(return_data.size) + 233] = _11822
                        mem[_9417 + ceil32(return_data.size) + 165] = 68
                        mem[_9417 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9417 + ceil32(return_data.size) + 329
                        mem[_9417 + ceil32(return_data.size) + 265] = 32
                        mem[_9417 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9395)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9417 + ceil32(return_data.size) + 329] = mem[s + _9417 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9417 + ceil32(return_data.size) + 397] = 0
                        call address(_9395).mem[_9417 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9417 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9417 + (2 * ceil32(return_data.size)) + 330
                            mem[_9417 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9417 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9417 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9417 + ceil32(return_data.size) + 361] == bool(mem[_9417 + ceil32(return_data.size) + 361])
                                if not mem[_9417 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9417 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9417 + ceil32(return_data.size) + 169] = this.address
                    mem[_9417 + ceil32(return_data.size) + 201] = address(_11803)
                    require ext_code.size(address(_9395))
                    staticcall address(_9395).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11803)
                    mem[_9417 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11803)
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11822
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11803) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9417 + 196] == bool(mem[_9417 + 196])
                    if not mem[_9417 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11911 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11938 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9417 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9417 + ceil32(return_data.size) + 233] = _11938
                        mem[_9417 + ceil32(return_data.size) + 165] = 68
                        mem[_9417 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9417 + ceil32(return_data.size) + 329
                        mem[_9417 + ceil32(return_data.size) + 265] = 32
                        mem[_9417 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9395)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9417 + ceil32(return_data.size) + 329] = mem[s + _9417 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9417 + ceil32(return_data.size) + 397] = 0
                        call address(_9395).mem[_9417 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9417 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9417 + (2 * ceil32(return_data.size)) + 330
                            mem[_9417 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9417 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9417 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9417 + ceil32(return_data.size) + 361] == bool(mem[_9417 + ceil32(return_data.size) + 361])
                                if not mem[_9417 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9417 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9417 + ceil32(return_data.size) + 169] = this.address
                    mem[_9417 + ceil32(return_data.size) + 201] = address(_11911)
                    require ext_code.size(address(_9395))
                    staticcall address(_9395).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11911)
                    mem[_9417 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11911)
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11938
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11911) << 64
            else:
                mem[_9433 + _9417 + 164] = 0
                call address(_9395).mem[_9417 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9417 + 168 len _9433 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9417 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9417 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9417 + 232] = mem[idx + _9417 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9417 + 232]
                    if not mem[96]:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11805 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11825 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9417 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9417 + 232] = _11825
                            mem[_9417 + 164] = 68
                            mem[_9417 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + 200 len 28]
                            mem[64] = _9417 + 328
                            mem[_9417 + 264] = 32
                            mem[_9417 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + 328] = mem[s + _9417 + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + 396] = 0
                            call address(_9395).mem[_9417 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + 396] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + 329
                                mem[_9417 + 328] = return_data.size
                                mem[_9417 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + 360] == bool(mem[_9417 + 360])
                                    if not mem[_9417 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9417 + 168] = this.address
                            mem[_9417 + 200] = address(_11805)
                            require ext_code.size(address(_9395))
                            staticcall address(_9395).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11805)
                            mem[_9417 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9417 + ceil32(return_data.size) + 200] = address(_11805)
                            mem[_9417 + ceil32(return_data.size) + 232] = _11825
                            mem[_9417 + ceil32(return_data.size) + 164] = 68
                            mem[_9417 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11805) << 64
                            mem[64] = _9417 + ceil32(return_data.size) + 328
                            mem[_9417 + ceil32(return_data.size) + 264] = 32
                            mem[_9417 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + ceil32(return_data.size) + 328] = mem[s + _9417 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + ceil32(return_data.size) + 396] = 0
                            call address(_9395).mem[_9417 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 396] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9417 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9417 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + ceil32(return_data.size) + 360] == bool(mem[_9417 + ceil32(return_data.size) + 360])
                                    if not mem[_9417 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11915 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11939 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9417 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9417 + 232] = _11939
                            mem[_9417 + 164] = 68
                            mem[_9417 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + 200 len 28]
                            mem[64] = _9417 + 328
                            mem[_9417 + 264] = 32
                            mem[_9417 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + 328] = mem[s + _9417 + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + 396] = 0
                            call address(_9395).mem[_9417 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + 396] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + 329
                                mem[_9417 + 328] = return_data.size
                                mem[_9417 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + 360] == bool(mem[_9417 + 360])
                                    if not mem[_9417 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9417 + 168] = this.address
                            mem[_9417 + 200] = address(_11915)
                            require ext_code.size(address(_9395))
                            staticcall address(_9395).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11915)
                            mem[_9417 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9417 + ceil32(return_data.size) + 200] = address(_11915)
                            mem[_9417 + ceil32(return_data.size) + 232] = _11939
                            mem[_9417 + ceil32(return_data.size) + 164] = 68
                            mem[_9417 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11915) << 64
                            mem[64] = _9417 + ceil32(return_data.size) + 328
                            mem[_9417 + ceil32(return_data.size) + 264] = 32
                            mem[_9417 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9395)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9417 + ceil32(return_data.size) + 328] = mem[s + _9417 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9417 + ceil32(return_data.size) + 396] = 0
                            call address(_9395).mem[_9417 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9417 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9417 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + 396] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9417 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9417 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9417 + ceil32(return_data.size) + 360] == bool(mem[_9417 + ceil32(return_data.size) + 360])
                                    if not mem[_9417 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_9417 + 164] = return_data.size
                mem[_9417 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9417 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9417 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9417 + ceil32(return_data.size) + 233] = mem[idx + _9417 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11807 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11828 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9417 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9417 + ceil32(return_data.size) + 233] = _11828
                        mem[_9417 + ceil32(return_data.size) + 165] = 68
                        mem[_9417 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9417 + ceil32(return_data.size) + 329
                        mem[_9417 + ceil32(return_data.size) + 265] = 32
                        mem[_9417 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9395)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9417 + ceil32(return_data.size) + 329] = mem[s + _9417 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9417 + ceil32(return_data.size) + 397] = 0
                        call address(_9395).mem[_9417 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9417 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9417 + (2 * ceil32(return_data.size)) + 330
                            mem[_9417 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9417 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9417 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9417 + ceil32(return_data.size) + 361] == bool(mem[_9417 + ceil32(return_data.size) + 361])
                                if not mem[_9417 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9417 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9417 + ceil32(return_data.size) + 169] = this.address
                    mem[_9417 + ceil32(return_data.size) + 201] = address(_11807)
                    require ext_code.size(address(_9395))
                    staticcall address(_9395).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11807)
                    mem[_9417 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11807)
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11828
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11807) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9417 + 196] == bool(mem[_9417 + 196])
                    if not mem[_9417 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11919 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11940 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9417 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9417 + ceil32(return_data.size) + 233] = _11940
                        mem[_9417 + ceil32(return_data.size) + 165] = 68
                        mem[_9417 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9417 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9417 + ceil32(return_data.size) + 329
                        mem[_9417 + ceil32(return_data.size) + 265] = 32
                        mem[_9417 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9395)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9417 + ceil32(return_data.size) + 329] = mem[s + _9417 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9417 + ceil32(return_data.size) + 397] = 0
                        call address(_9395).mem[_9417 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9417 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9417 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9417 + (2 * ceil32(return_data.size)) + 330
                            mem[_9417 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9417 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9417 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9417 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9417 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9417 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9417 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9417 + ceil32(return_data.size) + 361] == bool(mem[_9417 + ceil32(return_data.size) + 361])
                                if not mem[_9417 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9417 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9417 + ceil32(return_data.size) + 169] = this.address
                    mem[_9417 + ceil32(return_data.size) + 201] = address(_11919)
                    require ext_code.size(address(_9395))
                    staticcall address(_9395).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11919)
                    mem[_9417 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11919)
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11940
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11919) << 64
            mem[64] = _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329
            mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9395)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                s = s + 32
                continue 
            mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call address(_9395).mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = _9417 + (4 * ceil32(return_data.size)) + 330
            mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_9417 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_9417 + (4 * ceil32(return_data.size)) + 334] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _9417 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _9417 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_9417 + (4 * ceil32(return_data.size)) + 398]
            if not return_data.size:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 32
            require mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_9417 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_9417 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_9417 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_9417 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_9417 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_9417 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _9417 + (4 * ceil32(return_data.size)) + 330
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
                revert with 0, 50
            _9397 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _9405 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[mem[64] + 36] = _9405
            require ext_code.size(address(_9397))
            call address(_9397).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _9405
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _9410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9410] == bool(mem[_9410])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _9418 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[mem[64] + 68] = 0
            _9421 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_9421 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9421 + 36 len 28]
            mem[64] = _9418 + 164
            mem[_9418 + 100] = 32
            mem[_9418 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9397)):
                revert with 0, 'Address: call to non-contract'
            _9434 = mem[_9421]
            s = 0
            while s < _9434:
                mem[s + _9418 + 164] = mem[s + _9421 + 32]
                s = s + 32
                continue 
            if ceil32(_9434) <= _9434:
                call address(_9397).mem[_9418 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9418 + 168 len _9434 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9418 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9418 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9418 + 232] = mem[idx + _9418 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9418 + 232]
                    if not mem[96]:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11809 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11831 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9418 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9418 + 232] = _11831
                            mem[_9418 + 164] = 68
                            mem[_9418 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + 200 len 28]
                            mem[64] = _9418 + 328
                            mem[_9418 + 264] = 32
                            mem[_9418 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + 328] = mem[s + _9418 + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + 396] = 0
                            call address(_9397).mem[_9418 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + 396] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + 329
                                mem[_9418 + 328] = return_data.size
                                mem[_9418 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + 360] == bool(mem[_9418 + 360])
                                    if not mem[_9418 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9418 + 168] = this.address
                            mem[_9418 + 200] = address(_11809)
                            require ext_code.size(address(_9397))
                            staticcall address(_9397).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11809)
                            mem[_9418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9418 + ceil32(return_data.size) + 200] = address(_11809)
                            mem[_9418 + ceil32(return_data.size) + 232] = _11831
                            mem[_9418 + ceil32(return_data.size) + 164] = 68
                            mem[_9418 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11809) << 64
                            mem[64] = _9418 + ceil32(return_data.size) + 328
                            mem[_9418 + ceil32(return_data.size) + 264] = 32
                            mem[_9418 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + ceil32(return_data.size) + 328] = mem[s + _9418 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + ceil32(return_data.size) + 396] = 0
                            call address(_9397).mem[_9418 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 396] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9418 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9418 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + ceil32(return_data.size) + 360] == bool(mem[_9418 + ceil32(return_data.size) + 360])
                                    if not mem[_9418 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11923 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11941 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9418 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9418 + 232] = _11941
                            mem[_9418 + 164] = 68
                            mem[_9418 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + 200 len 28]
                            mem[64] = _9418 + 328
                            mem[_9418 + 264] = 32
                            mem[_9418 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + 328] = mem[s + _9418 + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + 396] = 0
                            call address(_9397).mem[_9418 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + 396] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + 329
                                mem[_9418 + 328] = return_data.size
                                mem[_9418 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + 360] == bool(mem[_9418 + 360])
                                    if not mem[_9418 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9418 + 168] = this.address
                            mem[_9418 + 200] = address(_11923)
                            require ext_code.size(address(_9397))
                            staticcall address(_9397).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11923)
                            mem[_9418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9418 + ceil32(return_data.size) + 200] = address(_11923)
                            mem[_9418 + ceil32(return_data.size) + 232] = _11941
                            mem[_9418 + ceil32(return_data.size) + 164] = 68
                            mem[_9418 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11923) << 64
                            mem[64] = _9418 + ceil32(return_data.size) + 328
                            mem[_9418 + ceil32(return_data.size) + 264] = 32
                            mem[_9418 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + ceil32(return_data.size) + 328] = mem[s + _9418 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + ceil32(return_data.size) + 396] = 0
                            call address(_9397).mem[_9418 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 396] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9418 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9418 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + ceil32(return_data.size) + 360] == bool(mem[_9418 + ceil32(return_data.size) + 360])
                                    if not mem[_9418 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_9418 + 164] = return_data.size
                mem[_9418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9418 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9418 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9418 + ceil32(return_data.size) + 233] = mem[idx + _9418 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11811 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11834 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9418 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9418 + ceil32(return_data.size) + 233] = _11834
                        mem[_9418 + ceil32(return_data.size) + 165] = 68
                        mem[_9418 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9418 + ceil32(return_data.size) + 329
                        mem[_9418 + ceil32(return_data.size) + 265] = 32
                        mem[_9418 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9397)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9418 + ceil32(return_data.size) + 329] = mem[s + _9418 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9418 + ceil32(return_data.size) + 397] = 0
                        call address(_9397).mem[_9418 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9418 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9418 + (2 * ceil32(return_data.size)) + 330
                            mem[_9418 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9418 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9418 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9418 + ceil32(return_data.size) + 361] == bool(mem[_9418 + ceil32(return_data.size) + 361])
                                if not mem[_9418 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9418 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9418 + ceil32(return_data.size) + 169] = this.address
                    mem[_9418 + ceil32(return_data.size) + 201] = address(_11811)
                    require ext_code.size(address(_9397))
                    staticcall address(_9397).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11811)
                    mem[_9418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11811)
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11834
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11811) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9418 + 196] == bool(mem[_9418 + 196])
                    if not mem[_9418 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11927 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11942 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9418 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9418 + ceil32(return_data.size) + 233] = _11942
                        mem[_9418 + ceil32(return_data.size) + 165] = 68
                        mem[_9418 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9418 + ceil32(return_data.size) + 329
                        mem[_9418 + ceil32(return_data.size) + 265] = 32
                        mem[_9418 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9397)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9418 + ceil32(return_data.size) + 329] = mem[s + _9418 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9418 + ceil32(return_data.size) + 397] = 0
                        call address(_9397).mem[_9418 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9418 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9418 + (2 * ceil32(return_data.size)) + 330
                            mem[_9418 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9418 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9418 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9418 + ceil32(return_data.size) + 361] == bool(mem[_9418 + ceil32(return_data.size) + 361])
                                if not mem[_9418 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9418 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9418 + ceil32(return_data.size) + 169] = this.address
                    mem[_9418 + ceil32(return_data.size) + 201] = address(_11927)
                    require ext_code.size(address(_9397))
                    staticcall address(_9397).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11927)
                    mem[_9418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11927)
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11942
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11927) << 64
            else:
                mem[_9434 + _9418 + 164] = 0
                call address(_9397).mem[_9418 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_9418 + 168 len _9434 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_9418 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_9418 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _9418 + 232] = mem[idx + _9418 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_9418 + 232]
                    if not mem[96]:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11813 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11837 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9418 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9418 + 232] = _11837
                            mem[_9418 + 164] = 68
                            mem[_9418 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + 200 len 28]
                            mem[64] = _9418 + 328
                            mem[_9418 + 264] = 32
                            mem[_9418 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + 328] = mem[s + _9418 + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + 396] = 0
                            call address(_9397).mem[_9418 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + 396] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + 329
                                mem[_9418 + 328] = return_data.size
                                mem[_9418 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + 360] == bool(mem[_9418 + 360])
                                    if not mem[_9418 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9418 + 168] = this.address
                            mem[_9418 + 200] = address(_11813)
                            require ext_code.size(address(_9397))
                            staticcall address(_9397).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11813)
                            mem[_9418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9418 + ceil32(return_data.size) + 200] = address(_11813)
                            mem[_9418 + ceil32(return_data.size) + 232] = _11837
                            mem[_9418 + ceil32(return_data.size) + 164] = 68
                            mem[_9418 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11813) << 64
                            mem[64] = _9418 + ceil32(return_data.size) + 328
                            mem[_9418 + ceil32(return_data.size) + 264] = 32
                            mem[_9418 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + ceil32(return_data.size) + 328] = mem[s + _9418 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + ceil32(return_data.size) + 396] = 0
                            call address(_9397).mem[_9418 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 396] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9418 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9418 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + ceil32(return_data.size) + 360] == bool(mem[_9418 + ceil32(return_data.size) + 360])
                                    if not mem[_9418 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        _11931 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 0, 50
                        _11943 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                            mem[_9418 + 200] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                            mem[_9418 + 232] = _11943
                            mem[_9418 + 164] = 68
                            mem[_9418 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + 200 len 28]
                            mem[64] = _9418 + 328
                            mem[_9418 + 264] = 32
                            mem[_9418 + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + 328] = mem[s + _9418 + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + 396] = 0
                            call address(_9397).mem[_9418 + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + 396] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + 329
                                mem[_9418 + 328] = return_data.size
                                mem[_9418 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + 360] == bool(mem[_9418 + 360])
                                    if not mem[_9418 + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9418 + 168] = this.address
                            mem[_9418 + 200] = address(_11931)
                            require ext_code.size(address(_9397))
                            staticcall address(_9397).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11931)
                            mem[_9418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_9418 + ceil32(return_data.size) + 200] = address(_11931)
                            mem[_9418 + ceil32(return_data.size) + 232] = _11943
                            mem[_9418 + ceil32(return_data.size) + 164] = 68
                            mem[_9418 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11931) << 64
                            mem[64] = _9418 + ceil32(return_data.size) + 328
                            mem[_9418 + ceil32(return_data.size) + 264] = 32
                            mem[_9418 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_9397)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _9418 + ceil32(return_data.size) + 328] = mem[s + _9418 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_9418 + ceil32(return_data.size) + 396] = 0
                            call address(_9397).mem[_9418 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_9418 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_9418 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + 396] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_9418 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_9418 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9418 + ceil32(return_data.size) + 360] == bool(mem[_9418 + ceil32(return_data.size) + 360])
                                    if not mem[_9418 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_9418 + 164] = return_data.size
                mem[_9418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_9418 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9418 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9418 + ceil32(return_data.size) + 233] = mem[idx + _9418 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 233]
                if not return_data.size:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11815 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11840 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9418 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9418 + ceil32(return_data.size) + 233] = _11840
                        mem[_9418 + ceil32(return_data.size) + 165] = 68
                        mem[_9418 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9418 + ceil32(return_data.size) + 329
                        mem[_9418 + ceil32(return_data.size) + 265] = 32
                        mem[_9418 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9397)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9418 + ceil32(return_data.size) + 329] = mem[s + _9418 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9418 + ceil32(return_data.size) + 397] = 0
                        call address(_9397).mem[_9418 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9418 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9418 + (2 * ceil32(return_data.size)) + 330
                            mem[_9418 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9418 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9418 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9418 + ceil32(return_data.size) + 361] == bool(mem[_9418 + ceil32(return_data.size) + 361])
                                if not mem[_9418 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9418 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9418 + ceil32(return_data.size) + 169] = this.address
                    mem[_9418 + ceil32(return_data.size) + 201] = address(_11815)
                    require ext_code.size(address(_9397))
                    staticcall address(_9397).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11815)
                    mem[_9418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11815)
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11840
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11815) << 64
                else:
                    require return_data.size >= 32
                    require mem[_9418 + 196] == bool(mem[_9418 + 196])
                    if not mem[_9418 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _11935 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _11944 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                        mem[_9418 + ceil32(return_data.size) + 201] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                        mem[_9418 + ceil32(return_data.size) + 233] = _11944
                        mem[_9418 + ceil32(return_data.size) + 165] = 68
                        mem[_9418 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_9418 + ceil32(return_data.size) + 201 len 28]
                        mem[64] = _9418 + ceil32(return_data.size) + 329
                        mem[_9418 + ceil32(return_data.size) + 265] = 32
                        mem[_9418 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_9397)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _9418 + ceil32(return_data.size) + 329] = mem[s + _9418 + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_9418 + ceil32(return_data.size) + 397] = 0
                        call address(_9397).mem[_9418 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_9418 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_9418 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _9418 + (2 * ceil32(return_data.size)) + 330
                            mem[_9418 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_9418 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_9418 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_9418 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _9418 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _9418 + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_9418 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9418 + ceil32(return_data.size) + 361] == bool(mem[_9418 + ceil32(return_data.size) + 361])
                                if not mem[_9418 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9418 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_9418 + ceil32(return_data.size) + 169] = this.address
                    mem[_9418 + ceil32(return_data.size) + 201] = address(_11935)
                    require ext_code.size(address(_9397))
                    staticcall address(_9397).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_11935)
                    mem[_9418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_11935)
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _11944
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_11935) << 64
            mem[64] = _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329
            mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_9397)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                s = s + 32
                continue 
            mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call address(_9397).mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = _9418 + (4 * ceil32(return_data.size)) + 330
            mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_9418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_9418 + (4 * ceil32(return_data.size)) + 334] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _9418 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _9418 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_9418 + (4 * ceil32(return_data.size)) + 398]
            if not return_data.size:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 32
            require mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_9418 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_9418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_9418 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_9418 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_9418 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_9418 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _9418 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if sub_49f961d6Address != arg1:
        revert with 0, 'Initiator verification failed.'
    mem[100] = msg.sender
    require ext_code.size(sub_49f961d6Address)
    staticcall sub_49f961d6Address.0xec656ad9 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FlashLoan verification failed.'
    require arg5.length >= 96
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 36)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 < 96 or ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require arg5.length + 36 >= cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68
    s = arg5 + cd[(arg5 + 36)] + 68
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg5 + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 68)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 68)] + 36)] > test266151307():
        revert with 0, 65
    if (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 < 128 or ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    idx = 0
    s = arg5 + cd[(arg5 + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require arg5 + cd[(arg5 + 68)] + cd[s] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] > test266151307():
            revert with 0, 65
        _5348 = mem[64]
        if mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32 < mem[64] or mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32
        mem[_5348] = cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]
        require cd[(arg5 + 68)] + cd[s] + cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] + 100 <= arg5.length + 36
        mem[_5348 + 32 len cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]] = call.data[arg5 + cd[(arg5 + 68)] + cd[s] + 100 len cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]]
        mem[_5348 + cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] + 32] = 0
        mem[t] = _5348
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + 36)] > test266151307():
        revert with 0, 65
    _5349 = mem[64]
    if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32
    mem[_5349] = cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require arg5.length + 36 >= cd[(arg5 + 100)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 68
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + 68
    t = _5349 + 32
    while idx < cd[(arg5 + cd[(arg5 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
    idx = 0
    while idx < _10682:
        if idx >= mem[_5349]:
            revert with 0, 50
        if not mem[(32 * idx) + _5349 + 44 len 20]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx >= mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]:
                revert with 0, 50
            if not mem[(32 * idx) + ceil32(return_data.size) + 128]:
                _10692 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
                _10693 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]]
                require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] >= 64
                require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 32] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 44 len 20]
                _10710 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64]
                require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] <= test266151307()
                require mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 63 < mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] + 32
                _10717 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32] > test266151307():
                    revert with 0, 65
                _10727 = mem[64]
                if mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32
                mem[_10727] = _10717
                require _10710 + _10717 + 64 <= _10693 + 32
                s = 0
                while s < _10717:
                    mem[s + _10727 + 32] = mem[s + _10692 + _10710 + 64]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_10717) <= _10717:
                    require _10717 >= 128
                    _13381 = mem[_10727 + 32]
                    require mem[_10727 + 32] == mem[_10727 + 44 len 20]
                    _13389 = mem[_10727 + 64]
                    require mem[_10727 + 64] == Mask(32, 224, mem[_10727 + 64])
                    _13409 = mem[_10727 + 96]
                    _13410 = mem[_10727 + 128]
                    require mem[_10727 + 128] <= test266151307()
                    require _10727 + mem[_10727 + 128] + 63 < _10727 + _10717 + 32
                    _13429 = mem[_10727 + mem[_10727 + 128] + 32]
                    if mem[_10727 + mem[_10727 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _13457 = mem[64]
                    if mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32
                    mem[_13457] = _13429
                    require _13410 + _13429 + 64 <= _10717 + 32
                    s = 0
                    while s < _13429:
                        mem[s + _13457 + 32] = mem[s + _10727 + _13410 + 64]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13429) <= _13429:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_13381)
                        mem[mem[64] + 36] = Mask(32, 224, _13389)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13429
                        s = 0
                        while s < _13429:
                            mem[s + mem[64] + 132] = mem[s + _13457 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13429) <= _13429:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13409 wei
                                 gas gas_remaining wei
                                args address(_13381), Mask(32, 224, _13389), Array(len=_13429, data=mem[mem[64] + 132 len ceil32(_13429)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18545 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18561 = mem[_18545]
                            require mem[_18545] <= test266151307()
                            require _18545 + mem[_18545] + 31 < _18545 + return_data.size
                            _18593 = mem[_18545 + mem[_18545]]
                            if mem[_18545 + mem[_18545]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18545 + mem[_18545]]) + 32 < 0 or _18545 + ceil32(return_data.size) + ceil32(mem[_18545 + mem[_18545]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18545 + ceil32(return_data.size) + ceil32(mem[_18545 + mem[_18545]]) + 32
                            mem[_18545 + ceil32(return_data.size)] = _18593
                            require _18561 + _18593 + 32 <= return_data.size
                            s = 0
                            while s < _18593:
                                mem[s + _18545 + ceil32(return_data.size) + 32] = mem[s + _18545 + _18561 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18593) > _18593:
                                mem[_18593 + _18545 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13429 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13409 wei
                                 gas gas_remaining wei
                                args address(_13381), Mask(32, 224, _13389), Array(len=_13429, data=mem[mem[64] + 132 len ceil32(_13429)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18546 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18562 = mem[_18546]
                            require mem[_18546] <= test266151307()
                            require _18546 + mem[_18546] + 31 < _18546 + return_data.size
                            _18594 = mem[_18546 + mem[_18546]]
                            if mem[_18546 + mem[_18546]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18546 + mem[_18546]]) + 32 < 0 or _18546 + ceil32(return_data.size) + ceil32(mem[_18546 + mem[_18546]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18546 + ceil32(return_data.size) + ceil32(mem[_18546 + mem[_18546]]) + 32
                            mem[_18546 + ceil32(return_data.size)] = _18594
                            require _18562 + _18594 + 32 <= return_data.size
                            s = 0
                            while s < _18594:
                                mem[s + _18546 + ceil32(return_data.size) + 32] = mem[s + _18546 + _18562 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18594) > _18594:
                                mem[_18594 + _18546 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13429 + _13457 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_13381)
                        mem[mem[64] + 36] = Mask(32, 224, _13389)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13429
                        s = 0
                        while s < _13429:
                            mem[s + mem[64] + 132] = mem[s + _13457 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13429) <= _13429:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13409 wei
                                 gas gas_remaining wei
                                args address(_13381), Mask(32, 224, _13389), Array(len=_13429, data=mem[mem[64] + 132 len ceil32(_13429)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18547 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18563 = mem[_18547]
                            require mem[_18547] <= test266151307()
                            require _18547 + mem[_18547] + 31 < _18547 + return_data.size
                            _18595 = mem[_18547 + mem[_18547]]
                            if mem[_18547 + mem[_18547]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18547 + mem[_18547]]) + 32 < 0 or _18547 + ceil32(return_data.size) + ceil32(mem[_18547 + mem[_18547]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18547 + ceil32(return_data.size) + ceil32(mem[_18547 + mem[_18547]]) + 32
                            mem[_18547 + ceil32(return_data.size)] = _18595
                            require _18563 + _18595 + 32 <= return_data.size
                            s = 0
                            while s < _18595:
                                mem[s + _18547 + ceil32(return_data.size) + 32] = mem[s + _18547 + _18563 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18595) > _18595:
                                mem[_18595 + _18547 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13429 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13409 wei
                                 gas gas_remaining wei
                                args address(_13381), Mask(32, 224, _13389), Array(len=_13429, data=mem[mem[64] + 132 len ceil32(_13429)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18548 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18564 = mem[_18548]
                            require mem[_18548] <= test266151307()
                            require _18548 + mem[_18548] + 31 < _18548 + return_data.size
                            _18596 = mem[_18548 + mem[_18548]]
                            if mem[_18548 + mem[_18548]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18548 + mem[_18548]]) + 32 < 0 or _18548 + ceil32(return_data.size) + ceil32(mem[_18548 + mem[_18548]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18548 + ceil32(return_data.size) + ceil32(mem[_18548 + mem[_18548]]) + 32
                            mem[_18548 + ceil32(return_data.size)] = _18596
                            require _18564 + _18596 + 32 <= return_data.size
                            s = 0
                            while s < _18596:
                                mem[s + _18548 + ceil32(return_data.size) + 32] = mem[s + _18548 + _18564 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18596) > _18596:
                                mem[_18596 + _18548 + ceil32(return_data.size) + 32] = 0
                else:
                    mem[_10717 + _10727 + 32] = 0
                    require _10717 >= 128
                    _13382 = mem[_10727 + 32]
                    require mem[_10727 + 32] == mem[_10727 + 44 len 20]
                    _13390 = mem[_10727 + 64]
                    require mem[_10727 + 64] == Mask(32, 224, mem[_10727 + 64])
                    _13411 = mem[_10727 + 96]
                    _13412 = mem[_10727 + 128]
                    require mem[_10727 + 128] <= test266151307()
                    require _10727 + mem[_10727 + 128] + 63 < _10727 + _10717 + 32
                    _13430 = mem[_10727 + mem[_10727 + 128] + 32]
                    if mem[_10727 + mem[_10727 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _13458 = mem[64]
                    if mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10727 + mem[_10727 + 128] + 32]) + 32
                    mem[_13458] = _13430
                    require _13412 + _13430 + 64 <= _10717 + 32
                    s = 0
                    while s < _13430:
                        mem[s + _13458 + 32] = mem[s + _10727 + _13412 + 64]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13430) <= _13430:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_13382)
                        mem[mem[64] + 36] = Mask(32, 224, _13390)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13430
                        s = 0
                        while s < _13430:
                            mem[s + mem[64] + 132] = mem[s + _13458 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13430) <= _13430:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13411 wei
                                 gas gas_remaining wei
                                args address(_13382), Mask(32, 224, _13390), Array(len=_13430, data=mem[mem[64] + 132 len ceil32(_13430)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18549 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18565 = mem[_18549]
                            require mem[_18549] <= test266151307()
                            require _18549 + mem[_18549] + 31 < _18549 + return_data.size
                            _18597 = mem[_18549 + mem[_18549]]
                            if mem[_18549 + mem[_18549]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18549 + mem[_18549]]) + 32 < 0 or _18549 + ceil32(return_data.size) + ceil32(mem[_18549 + mem[_18549]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18549 + ceil32(return_data.size) + ceil32(mem[_18549 + mem[_18549]]) + 32
                            mem[_18549 + ceil32(return_data.size)] = _18597
                            require _18565 + _18597 + 32 <= return_data.size
                            s = 0
                            while s < _18597:
                                mem[s + _18549 + ceil32(return_data.size) + 32] = mem[s + _18549 + _18565 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18597) > _18597:
                                mem[_18597 + _18549 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13430 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13411 wei
                                 gas gas_remaining wei
                                args address(_13382), Mask(32, 224, _13390), Array(len=_13430, data=mem[mem[64] + 132 len ceil32(_13430)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18550 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18566 = mem[_18550]
                            require mem[_18550] <= test266151307()
                            require _18550 + mem[_18550] + 31 < _18550 + return_data.size
                            _18598 = mem[_18550 + mem[_18550]]
                            if mem[_18550 + mem[_18550]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18550 + mem[_18550]]) + 32 < 0 or _18550 + ceil32(return_data.size) + ceil32(mem[_18550 + mem[_18550]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18550 + ceil32(return_data.size) + ceil32(mem[_18550 + mem[_18550]]) + 32
                            mem[_18550 + ceil32(return_data.size)] = _18598
                            require _18566 + _18598 + 32 <= return_data.size
                            s = 0
                            while s < _18598:
                                mem[s + _18550 + ceil32(return_data.size) + 32] = mem[s + _18550 + _18566 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18598) > _18598:
                                mem[_18598 + _18550 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13430 + _13458 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_13382)
                        mem[mem[64] + 36] = Mask(32, 224, _13390)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13430
                        s = 0
                        while s < _13430:
                            mem[s + mem[64] + 132] = mem[s + _13458 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13430) <= _13430:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13411 wei
                                 gas gas_remaining wei
                                args address(_13382), Mask(32, 224, _13390), Array(len=_13430, data=mem[mem[64] + 132 len ceil32(_13430)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18551 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18567 = mem[_18551]
                            require mem[_18551] <= test266151307()
                            require _18551 + mem[_18551] + 31 < _18551 + return_data.size
                            _18599 = mem[_18551 + mem[_18551]]
                            if mem[_18551 + mem[_18551]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18551 + mem[_18551]]) + 32 < 0 or _18551 + ceil32(return_data.size) + ceil32(mem[_18551 + mem[_18551]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18551 + ceil32(return_data.size) + ceil32(mem[_18551 + mem[_18551]]) + 32
                            mem[_18551 + ceil32(return_data.size)] = _18599
                            require _18567 + _18599 + 32 <= return_data.size
                            s = 0
                            while s < _18599:
                                mem[s + _18551 + ceil32(return_data.size) + 32] = mem[s + _18551 + _18567 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18599) > _18599:
                                mem[_18599 + _18551 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13430 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _13411 wei
                                 gas gas_remaining wei
                                args address(_13382), Mask(32, 224, _13390), Array(len=_13430, data=mem[mem[64] + 132 len ceil32(_13430)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18552 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18568 = mem[_18552]
                            require mem[_18552] <= test266151307()
                            require _18552 + mem[_18552] + 31 < _18552 + return_data.size
                            _18600 = mem[_18552 + mem[_18552]]
                            if mem[_18552 + mem[_18552]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_18552 + mem[_18552]]) + 32 < 0 or _18552 + ceil32(return_data.size) + ceil32(mem[_18552 + mem[_18552]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18552 + ceil32(return_data.size) + ceil32(mem[_18552 + mem[_18552]]) + 32
                            mem[_18552 + ceil32(return_data.size)] = _18600
                            require _18568 + _18600 + 32 <= return_data.size
                            s = 0
                            while s < _18600:
                                mem[s + _18552 + ceil32(return_data.size) + 32] = mem[s + _18552 + _18568 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18600) > _18600:
                                mem[_18600 + _18552 + ceil32(return_data.size) + 32] = 0
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _10694 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
            _10695 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]]
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] >= 128
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 32] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 44 len 20]
            _10711 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64]
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 76 len 20]
            _10718 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96]
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] <= test266151307()
            require mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 63 < mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] + 32
            _10723 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32] > test266151307():
                revert with 0, 65
            _10731 = mem[64]
            if mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32
            mem[_10731] = _10723
            require _10718 + _10723 + 64 <= _10695 + 32
            s = 0
            while s < _10723:
                mem[s + _10731 + 32] = mem[s + _10694 + _10718 + 64]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_10723) <= _10723:
                _13355 = mem[_10694 + 128]
                require mem[_10694 + 128] <= test266151307()
                require _10694 + mem[_10694 + 128] + 63 < _10694 + _10695 + 32
                _13369 = mem[_10694 + mem[_10694 + 128] + 32]
                if mem[_10694 + mem[_10694 + 128] + 32] > test266151307():
                    revert with 0, 65
                _13397 = mem[64]
                if mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32
                mem[_13397] = _13369
                require _13355 + _13369 + 64 <= _10695 + 32
                s = 0
                while s < _13369:
                    mem[s + _13397 + 32] = mem[s + _10694 + _13355 + 64]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13369) <= _13369:
                    mem[mem[64] + 4] = address(_10711)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10711)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_16353] == bool(mem[_16353])
                    if not mem[_16353]:
                        revert with 0, 'Invalid after adapter verification!'
                    _16849 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _13369
                    s = 0
                    while s < _13369:
                        mem[s + mem[64] + 100] = mem[s + _13397 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13369) <= _13369:
                        _18505 = mem[64]
                        mem[mem[64]] = ceil32(_13369) + 68
                        mem[64] = ceil32(_13369) + mem[64] + 100
                        _18529 = mem[_10731]
                        s = 0
                        while s < _18529:
                            mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _10731 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18529) <= _18529:
                            mem[_18505 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16849 + 100 len _18529])) or mem[_18505 + 36 len 28]
                            _19761 = mem[_18505]
                            s = 0
                            while s < _19761:
                                mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _18505 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_19761) <= _19761:
                                delegate address(_10711).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _19761 + ceil32(_13369) + _16849 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                        idx = idx + 1
                                        continue 
                                    _20753 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    _20881 = mem[96]
                                    mem[mem[64] + 36] = mem[96]
                                    idx = 0
                                    while idx < _20881:
                                        mem[idx + _20753 + 68] = mem[idx + 128]
                                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_20881) > _20881:
                                        mem[_20881 + _20753 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(_20881) + _20753 + -mem[64] + 68
                                _20689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_20689] = return_data.size
                                mem[_20689 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20754 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _20754 + 68] = mem[idx + _20689 + 32]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _20754 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _20754 + -mem[64] + 68
                            mem[_19761 + ceil32(_13369) + _16849 + 100] = 0
                            delegate address(_10711).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19761 + ceil32(_13369) + _16849 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20755 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _20883 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _20883:
                                    mem[idx + _20755 + 68] = mem[idx + 128]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_20883) > _20883:
                                    mem[_20883 + _20755 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_20883) + _20755 + -mem[64] + 68
                            _20690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_20690] = return_data.size
                            mem[_20690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _20756 + 68] = mem[idx + _20690 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _20756 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _20756 + -mem[64] + 68
                        mem[_18529 + ceil32(_13369) + _16849 + 100] = 0
                        mem[_18505 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16849 + 100 len _18529])) or mem[_18505 + 36 len 28]
                        _19762 = mem[_18505]
                        s = 0
                        while s < _19762:
                            mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _18505 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19762) <= _19762:
                            delegate address(_10711).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19762 + ceil32(_13369) + _16849 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20757 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _20885 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _20885:
                                    mem[idx + _20757 + 68] = mem[idx + 128]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_20885) > _20885:
                                    mem[_20885 + _20757 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_20885) + _20757 + -mem[64] + 68
                            _20691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_20691] = return_data.size
                            mem[_20691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20758 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _20758 + 68] = mem[idx + _20691 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _20758 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _20758 + -mem[64] + 68
                        mem[_19762 + ceil32(_13369) + _16849 + 100] = 0
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19762 + ceil32(_13369) + _16849 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20759 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20887 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20887:
                                mem[idx + _20759 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20887) > _20887:
                                mem[_20887 + _20759 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20887) + _20759 + -mem[64] + 68
                        _20692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20692] = return_data.size
                        mem[_20692 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20760 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20760 + 68] = mem[idx + _20692 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20760 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20760 + -mem[64] + 68
                    mem[_13369 + mem[64] + 100] = 0
                    _18506 = mem[64]
                    mem[mem[64]] = ceil32(_13369) + 68
                    mem[64] = ceil32(_13369) + mem[64] + 100
                    _18530 = mem[_10731]
                    s = 0
                    while s < _18530:
                        mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _10731 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_18530) <= _18530:
                        mem[_18506 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16849 + 100 len _18530])) or mem[_18506 + 36 len 28]
                        _19763 = mem[_18506]
                        s = 0
                        while s < _19763:
                            mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _18506 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19763) <= _19763:
                            delegate address(_10711).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19763 + ceil32(_13369) + _16849 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20761 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _20889 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _20889:
                                    mem[idx + _20761 + 68] = mem[idx + 128]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_20889) > _20889:
                                    mem[_20889 + _20761 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_20889) + _20761 + -mem[64] + 68
                            _20693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_20693] = return_data.size
                            mem[_20693 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20762 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _20762 + 68] = mem[idx + _20693 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _20762 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _20762 + -mem[64] + 68
                        mem[_19763 + ceil32(_13369) + _16849 + 100] = 0
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19763 + ceil32(_13369) + _16849 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20891 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20891:
                                mem[idx + _20763 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20891) > _20891:
                                mem[_20891 + _20763 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20891) + _20763 + -mem[64] + 68
                        _20694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20694] = return_data.size
                        mem[_20694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20764 + 68] = mem[idx + _20694 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20764 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20764 + -mem[64] + 68
                    mem[_18530 + ceil32(_13369) + _16849 + 100] = 0
                    mem[_18506 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16849 + 100 len _18530])) or mem[_18506 + 36 len 28]
                    _19764 = mem[_18506]
                    s = 0
                    while s < _19764:
                        mem[s + ceil32(_13369) + _16849 + 100] = mem[s + _18506 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19764) <= _19764:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19764 + ceil32(_13369) + _16849 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20765 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20893 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20893:
                                mem[idx + _20765 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20893) > _20893:
                                mem[_20893 + _20765 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20893) + _20765 + -mem[64] + 68
                        _20695 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20695] = return_data.size
                        mem[_20695 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20766 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20766 + 68] = mem[idx + _20695 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20766 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20766 + -mem[64] + 68
                    mem[_19764 + ceil32(_13369) + _16849 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19764 + ceil32(_13369) + _16849 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20895 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20895:
                            mem[idx + _20767 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20895) > _20895:
                            mem[_20895 + _20767 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20895) + _20767 + -mem[64] + 68
                    _20696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20696] = return_data.size
                    mem[_20696 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20768 + 68] = mem[idx + _20696 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20768 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20768 + -mem[64] + 68
                mem[_13369 + _13397 + 32] = 0
                mem[mem[64] + 4] = address(_10711)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10711)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16354] == bool(mem[_16354])
                if not mem[_16354]:
                    revert with 0, 'Invalid after adapter verification!'
                _16851 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _13369
                s = 0
                while s < _13369:
                    mem[s + mem[64] + 100] = mem[s + _13397 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13369) <= _13369:
                    _18507 = mem[64]
                    mem[mem[64]] = ceil32(_13369) + 68
                    mem[64] = ceil32(_13369) + mem[64] + 100
                    _18531 = mem[_10731]
                    s = 0
                    while s < _18531:
                        mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _10731 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_18531) <= _18531:
                        mem[_18507 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16851 + 100 len _18531])) or mem[_18507 + 36 len 28]
                        _19765 = mem[_18507]
                        s = 0
                        while s < _19765:
                            mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _18507 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19765) <= _19765:
                            delegate address(_10711).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19765 + ceil32(_13369) + _16851 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20769 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _20897 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _20897:
                                    mem[idx + _20769 + 68] = mem[idx + 128]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_20897) > _20897:
                                    mem[_20897 + _20769 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_20897) + _20769 + -mem[64] + 68
                            _20697 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_20697] = return_data.size
                            mem[_20697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20770 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _20770 + 68] = mem[idx + _20697 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _20770 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _20770 + -mem[64] + 68
                        mem[_19765 + ceil32(_13369) + _16851 + 100] = 0
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19765 + ceil32(_13369) + _16851 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20771 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20899 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20899:
                                mem[idx + _20771 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20899) > _20899:
                                mem[_20899 + _20771 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20899) + _20771 + -mem[64] + 68
                        _20698 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20698] = return_data.size
                        mem[_20698 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20772 + 68] = mem[idx + _20698 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20772 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20772 + -mem[64] + 68
                    mem[_18531 + ceil32(_13369) + _16851 + 100] = 0
                    mem[_18507 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16851 + 100 len _18531])) or mem[_18507 + 36 len 28]
                    _19766 = mem[_18507]
                    s = 0
                    while s < _19766:
                        mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _18507 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19766) <= _19766:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19766 + ceil32(_13369) + _16851 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20773 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20901 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20901:
                                mem[idx + _20773 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20901) > _20901:
                                mem[_20901 + _20773 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20901) + _20773 + -mem[64] + 68
                        _20699 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20699] = return_data.size
                        mem[_20699 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20774 + 68] = mem[idx + _20699 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20774 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20774 + -mem[64] + 68
                    mem[_19766 + ceil32(_13369) + _16851 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19766 + ceil32(_13369) + _16851 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20775 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20903 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20903:
                            mem[idx + _20775 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20903) > _20903:
                            mem[_20903 + _20775 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20903) + _20775 + -mem[64] + 68
                    _20700 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20700] = return_data.size
                    mem[_20700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20776 + 68] = mem[idx + _20700 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20776 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20776 + -mem[64] + 68
                mem[_13369 + mem[64] + 100] = 0
                _18508 = mem[64]
                mem[mem[64]] = ceil32(_13369) + 68
                mem[64] = ceil32(_13369) + mem[64] + 100
                _18532 = mem[_10731]
                s = 0
                while s < _18532:
                    mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _10731 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18532) <= _18532:
                    mem[_18508 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16851 + 100 len _18532])) or mem[_18508 + 36 len 28]
                    _19767 = mem[_18508]
                    s = 0
                    while s < _19767:
                        mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _18508 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19767) <= _19767:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19767 + ceil32(_13369) + _16851 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20777 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20905 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20905:
                                mem[idx + _20777 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20905) > _20905:
                                mem[_20905 + _20777 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20905) + _20777 + -mem[64] + 68
                        _20701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20701] = return_data.size
                        mem[_20701 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20778 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20778 + 68] = mem[idx + _20701 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20778 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20778 + -mem[64] + 68
                    mem[_19767 + ceil32(_13369) + _16851 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19767 + ceil32(_13369) + _16851 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20779 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20907 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20907:
                            mem[idx + _20779 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20907) > _20907:
                            mem[_20907 + _20779 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20907) + _20779 + -mem[64] + 68
                    _20702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20702] = return_data.size
                    mem[_20702 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20780 + 68] = mem[idx + _20702 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20780 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20780 + -mem[64] + 68
                mem[_18532 + ceil32(_13369) + _16851 + 100] = 0
                mem[_18508 + 32] = Mask(32, 224, sha3(mem[ceil32(_13369) + _16851 + 100 len _18532])) or mem[_18508 + 36 len 28]
                _19768 = mem[_18508]
                s = 0
                while s < _19768:
                    mem[s + ceil32(_13369) + _16851 + 100] = mem[s + _18508 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19768) <= _19768:
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19768 + ceil32(_13369) + _16851 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20909 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20909:
                            mem[idx + _20781 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20909) > _20909:
                            mem[_20909 + _20781 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20909) + _20781 + -mem[64] + 68
                    _20703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20703] = return_data.size
                    mem[_20703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20782 + 68] = mem[idx + _20703 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20782 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20782 + -mem[64] + 68
                mem[_19768 + ceil32(_13369) + _16851 + 100] = 0
                delegate address(_10711).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19768 + ceil32(_13369) + _16851 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20911 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20911:
                        mem[idx + _20783 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20911) > _20911:
                        mem[_20911 + _20783 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20911) + _20783 + -mem[64] + 68
                _20704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20704] = return_data.size
                mem[_20704 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20784 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20784 + 68] = mem[idx + _20704 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20784 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20784 + -mem[64] + 68
            mem[_10723 + _10731 + 32] = 0
            _13356 = mem[_10694 + 128]
            require mem[_10694 + 128] <= test266151307()
            require _10694 + mem[_10694 + 128] + 63 < _10694 + _10695 + 32
            _13370 = mem[_10694 + mem[_10694 + 128] + 32]
            if mem[_10694 + mem[_10694 + 128] + 32] > test266151307():
                revert with 0, 65
            _13398 = mem[64]
            if mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[_10694 + mem[_10694 + 128] + 32]) + 32
            mem[_13398] = _13370
            require _13356 + _13370 + 64 <= _10695 + 32
            s = 0
            while s < _13370:
                mem[s + _13398 + 32] = mem[s + _10694 + _13356 + 64]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_13370) <= _13370:
                mem[mem[64] + 4] = address(_10711)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10711)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16355] == bool(mem[_16355])
                if not mem[_16355]:
                    revert with 0, 'Invalid after adapter verification!'
                _16853 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _13370
                s = 0
                while s < _13370:
                    mem[s + mem[64] + 100] = mem[s + _13398 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13370) <= _13370:
                    _18509 = mem[64]
                    mem[mem[64]] = ceil32(_13370) + 68
                    mem[64] = ceil32(_13370) + mem[64] + 100
                    _18533 = mem[_10731]
                    s = 0
                    while s < _18533:
                        mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _10731 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_18533) <= _18533:
                        mem[_18509 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16853 + 100 len _18533])) or mem[_18509 + 36 len 28]
                        _19769 = mem[_18509]
                        s = 0
                        while s < _19769:
                            mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _18509 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19769) <= _19769:
                            delegate address(_10711).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19769 + ceil32(_13370) + _16853 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 1
                                    continue 
                                _20785 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _20913 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                idx = 0
                                while idx < _20913:
                                    mem[idx + _20785 + 68] = mem[idx + 128]
                                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_20913) > _20913:
                                    mem[_20913 + _20785 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(_20913) + _20785 + -mem[64] + 68
                            _20705 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_20705] = return_data.size
                            mem[_20705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20786 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _20786 + 68] = mem[idx + _20705 + 32]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _20786 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _20786 + -mem[64] + 68
                        mem[_19769 + ceil32(_13370) + _16853 + 100] = 0
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19769 + ceil32(_13370) + _16853 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20915 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20915:
                                mem[idx + _20787 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20915) > _20915:
                                mem[_20915 + _20787 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20915) + _20787 + -mem[64] + 68
                        _20706 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20706] = return_data.size
                        mem[_20706 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20788 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20788 + 68] = mem[idx + _20706 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20788 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20788 + -mem[64] + 68
                    mem[_18533 + ceil32(_13370) + _16853 + 100] = 0
                    mem[_18509 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16853 + 100 len _18533])) or mem[_18509 + 36 len 28]
                    _19770 = mem[_18509]
                    s = 0
                    while s < _19770:
                        mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _18509 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19770) <= _19770:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19770 + ceil32(_13370) + _16853 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20789 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20917 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20917:
                                mem[idx + _20789 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20917) > _20917:
                                mem[_20917 + _20789 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20917) + _20789 + -mem[64] + 68
                        _20707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20707] = return_data.size
                        mem[_20707 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20790 + 68] = mem[idx + _20707 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20790 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20790 + -mem[64] + 68
                    mem[_19770 + ceil32(_13370) + _16853 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19770 + ceil32(_13370) + _16853 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20919 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20919:
                            mem[idx + _20791 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20919) > _20919:
                            mem[_20919 + _20791 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20919) + _20791 + -mem[64] + 68
                    _20708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20708] = return_data.size
                    mem[_20708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20792 + 68] = mem[idx + _20708 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20792 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20792 + -mem[64] + 68
                mem[_13370 + mem[64] + 100] = 0
                _18510 = mem[64]
                mem[mem[64]] = ceil32(_13370) + 68
                mem[64] = ceil32(_13370) + mem[64] + 100
                _18534 = mem[_10731]
                s = 0
                while s < _18534:
                    mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _10731 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18534) <= _18534:
                    mem[_18510 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16853 + 100 len _18534])) or mem[_18510 + 36 len 28]
                    _19771 = mem[_18510]
                    s = 0
                    while s < _19771:
                        mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _18510 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19771) <= _19771:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19771 + ceil32(_13370) + _16853 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20793 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20921 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20921:
                                mem[idx + _20793 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20921) > _20921:
                                mem[_20921 + _20793 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20921) + _20793 + -mem[64] + 68
                        _20709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20709] = return_data.size
                        mem[_20709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20794 + 68] = mem[idx + _20709 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20794 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20794 + -mem[64] + 68
                    mem[_19771 + ceil32(_13370) + _16853 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19771 + ceil32(_13370) + _16853 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20795 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20923 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20923:
                            mem[idx + _20795 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20923) > _20923:
                            mem[_20923 + _20795 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20923) + _20795 + -mem[64] + 68
                    _20710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20710] = return_data.size
                    mem[_20710 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20796 + 68] = mem[idx + _20710 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20796 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20796 + -mem[64] + 68
                mem[_18534 + ceil32(_13370) + _16853 + 100] = 0
                mem[_18510 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16853 + 100 len _18534])) or mem[_18510 + 36 len 28]
                _19772 = mem[_18510]
                s = 0
                while s < _19772:
                    mem[s + ceil32(_13370) + _16853 + 100] = mem[s + _18510 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19772) <= _19772:
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19772 + ceil32(_13370) + _16853 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20925 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20925:
                            mem[idx + _20797 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20925) > _20925:
                            mem[_20925 + _20797 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20925) + _20797 + -mem[64] + 68
                    _20711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20711] = return_data.size
                    mem[_20711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20798 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20798 + 68] = mem[idx + _20711 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20798 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20798 + -mem[64] + 68
                mem[_19772 + ceil32(_13370) + _16853 + 100] = 0
                delegate address(_10711).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19772 + ceil32(_13370) + _16853 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20927 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20927:
                        mem[idx + _20799 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20927) > _20927:
                        mem[_20927 + _20799 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20927) + _20799 + -mem[64] + 68
                _20712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20712] = return_data.size
                mem[_20712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20800 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20800 + 68] = mem[idx + _20712 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20800 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20800 + -mem[64] + 68
            mem[_13370 + _13398 + 32] = 0
            mem[mem[64] + 4] = address(_10711)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10711)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16356] == bool(mem[_16356])
            if not mem[_16356]:
                revert with 0, 'Invalid after adapter verification!'
            _16855 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _13370
            s = 0
            while s < _13370:
                mem[s + mem[64] + 100] = mem[s + _13398 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_13370) <= _13370:
                _18511 = mem[64]
                mem[mem[64]] = ceil32(_13370) + 68
                mem[64] = ceil32(_13370) + mem[64] + 100
                _18535 = mem[_10731]
                s = 0
                while s < _18535:
                    mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _10731 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18535) <= _18535:
                    mem[_18511 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16855 + 100 len _18535])) or mem[_18511 + 36 len 28]
                    _19773 = mem[_18511]
                    s = 0
                    while s < _19773:
                        mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _18511 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19773) <= _19773:
                        delegate address(_10711).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19773 + ceil32(_13370) + _16855 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20801 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20929 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20929:
                                mem[idx + _20801 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20929) > _20929:
                                mem[_20929 + _20801 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20929) + _20801 + -mem[64] + 68
                        _20713 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20713] = return_data.size
                        mem[_20713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20802 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20802 + 68] = mem[idx + _20713 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20802 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20802 + -mem[64] + 68
                    mem[_19773 + ceil32(_13370) + _16855 + 100] = 0
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19773 + ceil32(_13370) + _16855 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20931 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20931:
                            mem[idx + _20803 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20931) > _20931:
                            mem[_20931 + _20803 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20931) + _20803 + -mem[64] + 68
                    _20714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20714] = return_data.size
                    mem[_20714 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20804 + 68] = mem[idx + _20714 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20804 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20804 + -mem[64] + 68
                mem[_18535 + ceil32(_13370) + _16855 + 100] = 0
                mem[_18511 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16855 + 100 len _18535])) or mem[_18511 + 36 len 28]
                _19774 = mem[_18511]
                s = 0
                while s < _19774:
                    mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _18511 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19774) <= _19774:
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19774 + ceil32(_13370) + _16855 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20805 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20933 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20933:
                            mem[idx + _20805 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20933) > _20933:
                            mem[_20933 + _20805 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20933) + _20805 + -mem[64] + 68
                    _20715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20715] = return_data.size
                    mem[_20715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20806 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20806 + 68] = mem[idx + _20715 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20806 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20806 + -mem[64] + 68
                mem[_19774 + ceil32(_13370) + _16855 + 100] = 0
                delegate address(_10711).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19774 + ceil32(_13370) + _16855 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20807 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20935 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20935:
                        mem[idx + _20807 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20935) > _20935:
                        mem[_20935 + _20807 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20935) + _20807 + -mem[64] + 68
                _20716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20716] = return_data.size
                mem[_20716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20808 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20808 + 68] = mem[idx + _20716 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20808 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20808 + -mem[64] + 68
            mem[_13370 + mem[64] + 100] = 0
            _18512 = mem[64]
            mem[mem[64]] = ceil32(_13370) + 68
            mem[64] = ceil32(_13370) + mem[64] + 100
            _18536 = mem[_10731]
            s = 0
            while s < _18536:
                mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _10731 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_18536) <= _18536:
                mem[_18512 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16855 + 100 len _18536])) or mem[_18512 + 36 len 28]
                _19775 = mem[_18512]
                s = 0
                while s < _19775:
                    mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _18512 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19775) <= _19775:
                    delegate address(_10711).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19775 + ceil32(_13370) + _16855 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20937 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20937:
                            mem[idx + _20809 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20937) > _20937:
                            mem[_20937 + _20809 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20937) + _20809 + -mem[64] + 68
                    _20717 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20717] = return_data.size
                    mem[_20717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20810 + 68] = mem[idx + _20717 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20810 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20810 + -mem[64] + 68
                mem[_19775 + ceil32(_13370) + _16855 + 100] = 0
                delegate address(_10711).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19775 + ceil32(_13370) + _16855 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20939 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20939:
                        mem[idx + _20811 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20939) > _20939:
                        mem[_20939 + _20811 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20939) + _20811 + -mem[64] + 68
                _20718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20718] = return_data.size
                mem[_20718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20812 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20812 + 68] = mem[idx + _20718 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20812 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20812 + -mem[64] + 68
            mem[_18536 + ceil32(_13370) + _16855 + 100] = 0
            mem[_18512 + 32] = Mask(32, 224, sha3(mem[ceil32(_13370) + _16855 + 100 len _18536])) or mem[_18512 + 36 len 28]
            _19776 = mem[_18512]
            s = 0
            while s < _19776:
                mem[s + ceil32(_13370) + _16855 + 100] = mem[s + _18512 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_19776) <= _19776:
                delegate address(_10711).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19776 + ceil32(_13370) + _16855 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20941 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20941:
                        mem[idx + _20813 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20941) > _20941:
                        mem[_20941 + _20813 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20941) + _20813 + -mem[64] + 68
                _20719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20719] = return_data.size
                mem[_20719 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20814 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20814 + 68] = mem[idx + _20719 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20814 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20814 + -mem[64] + 68
            mem[_19776 + ceil32(_13370) + _16855 + 100] = 0
            delegate address(_10711).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19776 + ceil32(_13370) + _16855 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20815 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _20943 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _20943:
                    mem[idx + _20815 + 68] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_20943) > _20943:
                    mem[_20943 + _20815 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_20943) + _20815 + -mem[64] + 68
            _20720 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_20720] = return_data.size
            mem[_20720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20816 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _20816 + 68] = mem[idx + _20720 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _20816 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _20816 + -mem[64] + 68
        if idx >= mem[_5349]:
            revert with 0, 50
        stor104 = mem[(32 * idx) + _5349 + 44 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if idx >= mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]:
            revert with 0, 50
        if not mem[(32 * idx) + ceil32(return_data.size) + 128]:
            _10705 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
            _10706 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]]
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] >= 64
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 32] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 44 len 20]
            _10719 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64]
            require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] <= test266151307()
            require mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 63 < mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] + 32
            _10724 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32] > test266151307():
                revert with 0, 65
            _10734 = mem[64]
            if mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] + 32]) + 32
            mem[_10734] = _10724
            require _10719 + _10724 + 64 <= _10706 + 32
            s = 0
            while s < _10724:
                mem[s + _10734 + 32] = mem[s + _10705 + _10719 + 64]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_10724) <= _10724:
                require _10724 >= 128
                _13383 = mem[_10734 + 32]
                require mem[_10734 + 32] == mem[_10734 + 44 len 20]
                _13391 = mem[_10734 + 64]
                require mem[_10734 + 64] == Mask(32, 224, mem[_10734 + 64])
                _13413 = mem[_10734 + 96]
                _13414 = mem[_10734 + 128]
                require mem[_10734 + 128] <= test266151307()
                require _10734 + mem[_10734 + 128] + 63 < _10734 + _10724 + 32
                _13431 = mem[_10734 + mem[_10734 + 128] + 32]
                if mem[_10734 + mem[_10734 + 128] + 32] > test266151307():
                    revert with 0, 65
                _13459 = mem[64]
                if mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32
                mem[_13459] = _13431
                require _13414 + _13431 + 64 <= _10724 + 32
                s = 0
                while s < _13431:
                    mem[s + _13459 + 32] = mem[s + _10734 + _13414 + 64]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13431) <= _13431:
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_13383)
                    mem[mem[64] + 36] = Mask(32, 224, _13391)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13431
                    s = 0
                    while s < _13431:
                        mem[s + mem[64] + 132] = mem[s + _13459 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13431) <= _13431:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _13413 wei
                             gas gas_remaining wei
                            args address(_13383), Mask(32, 224, _13391), Array(len=_13431, data=mem[mem[64] + 132 len ceil32(_13431)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18553 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18577 = mem[_18553]
                        require mem[_18553] <= test266151307()
                        require _18553 + mem[_18553] + 31 < _18553 + return_data.size
                        _18665 = mem[_18553 + mem[_18553]]
                        if mem[_18553 + mem[_18553]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18553 + mem[_18553]]) + 32 < 0 or _18553 + ceil32(return_data.size) + ceil32(mem[_18553 + mem[_18553]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18553 + ceil32(return_data.size) + ceil32(mem[_18553 + mem[_18553]]) + 32
                        mem[_18553 + ceil32(return_data.size)] = _18665
                        require _18577 + _18665 + 32 <= return_data.size
                        s = 0
                        while s < _18665:
                            mem[s + _18553 + ceil32(return_data.size) + 32] = mem[s + _18553 + _18577 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18665) > _18665:
                            mem[_18665 + _18553 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13431 + mem[64] + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _13413 wei
                             gas gas_remaining wei
                            args address(_13383), Mask(32, 224, _13391), Array(len=_13431, data=mem[mem[64] + 132 len ceil32(_13431)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18554 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18578 = mem[_18554]
                        require mem[_18554] <= test266151307()
                        require _18554 + mem[_18554] + 31 < _18554 + return_data.size
                        _18666 = mem[_18554 + mem[_18554]]
                        if mem[_18554 + mem[_18554]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18554 + mem[_18554]]) + 32 < 0 or _18554 + ceil32(return_data.size) + ceil32(mem[_18554 + mem[_18554]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18554 + ceil32(return_data.size) + ceil32(mem[_18554 + mem[_18554]]) + 32
                        mem[_18554 + ceil32(return_data.size)] = _18666
                        require _18578 + _18666 + 32 <= return_data.size
                        s = 0
                        while s < _18666:
                            mem[s + _18554 + ceil32(return_data.size) + 32] = mem[s + _18554 + _18578 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18666) > _18666:
                            mem[_18666 + _18554 + ceil32(return_data.size) + 32] = 0
                else:
                    mem[_13431 + _13459 + 32] = 0
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_13383)
                    mem[mem[64] + 36] = Mask(32, 224, _13391)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13431
                    s = 0
                    while s < _13431:
                        mem[s + mem[64] + 132] = mem[s + _13459 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13431) <= _13431:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _13413 wei
                             gas gas_remaining wei
                            args address(_13383), Mask(32, 224, _13391), Array(len=_13431, data=mem[mem[64] + 132 len ceil32(_13431)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18555 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18579 = mem[_18555]
                        require mem[_18555] <= test266151307()
                        require _18555 + mem[_18555] + 31 < _18555 + return_data.size
                        _18667 = mem[_18555 + mem[_18555]]
                        if mem[_18555 + mem[_18555]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18555 + mem[_18555]]) + 32 < 0 or _18555 + ceil32(return_data.size) + ceil32(mem[_18555 + mem[_18555]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18555 + ceil32(return_data.size) + ceil32(mem[_18555 + mem[_18555]]) + 32
                        mem[_18555 + ceil32(return_data.size)] = _18667
                        require _18579 + _18667 + 32 <= return_data.size
                        s = 0
                        while s < _18667:
                            mem[s + _18555 + ceil32(return_data.size) + 32] = mem[s + _18555 + _18579 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18667) > _18667:
                            mem[_18667 + _18555 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13431 + mem[64] + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).0xd098d39a with:
                           value _13413 wei
                             gas gas_remaining wei
                            args address(_13383), Mask(32, 224, _13391), Array(len=_13431, data=mem[mem[64] + 132 len ceil32(_13431)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18556 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18580 = mem[_18556]
                        require mem[_18556] <= test266151307()
                        require _18556 + mem[_18556] + 31 < _18556 + return_data.size
                        _18668 = mem[_18556 + mem[_18556]]
                        if mem[_18556 + mem[_18556]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18556 + mem[_18556]]) + 32 < 0 or _18556 + ceil32(return_data.size) + ceil32(mem[_18556 + mem[_18556]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18556 + ceil32(return_data.size) + ceil32(mem[_18556 + mem[_18556]]) + 32
                        mem[_18556 + ceil32(return_data.size)] = _18668
                        require _18580 + _18668 + 32 <= return_data.size
                        s = 0
                        while s < _18668:
                            mem[s + _18556 + ceil32(return_data.size) + 32] = mem[s + _18556 + _18580 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18668) > _18668:
                            mem[_18668 + _18556 + ceil32(return_data.size) + 32] = 0
            else:
                mem[_10724 + _10734 + 32] = 0
                require _10724 >= 128
                _13384 = mem[_10734 + 32]
                require mem[_10734 + 32] == mem[_10734 + 44 len 20]
                _13392 = mem[_10734 + 64]
                require mem[_10734 + 64] == Mask(32, 224, mem[_10734 + 64])
                _13415 = mem[_10734 + 96]
                _13416 = mem[_10734 + 128]
                require mem[_10734 + 128] <= test266151307()
                require _10734 + mem[_10734 + 128] + 63 < _10734 + _10724 + 32
                _13432 = mem[_10734 + mem[_10734 + 128] + 32]
                if mem[_10734 + mem[_10734 + 128] + 32] > test266151307():
                    revert with 0, 65
                _13460 = mem[64]
                if mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10734 + mem[_10734 + 128] + 32]) + 32
                mem[_13460] = _13432
                require _13416 + _13432 + 64 <= _10724 + 32
                s = 0
                while s < _13432:
                    mem[s + _13460 + 32] = mem[s + _10734 + _13416 + 64]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13432) <= _13432:
                    _16075 = mem[64]
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_13384)
                    mem[mem[64] + 36] = Mask(32, 224, _13392)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13432
                    s = 0
                    while s < _13432:
                        mem[s + mem[64] + 132] = mem[s + _13460 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13432) <= _13432:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _13415 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13432) + _16075 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18557 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18581 = mem[_18557]
                        require mem[_18557] <= test266151307()
                        require _18557 + mem[_18557] + 31 < _18557 + return_data.size
                        _18669 = mem[_18557 + mem[_18557]]
                        if mem[_18557 + mem[_18557]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18557 + mem[_18557]]) + 32 < 0 or _18557 + ceil32(return_data.size) + ceil32(mem[_18557 + mem[_18557]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18557 + ceil32(return_data.size) + ceil32(mem[_18557 + mem[_18557]]) + 32
                        mem[_18557 + ceil32(return_data.size)] = _18669
                        require _18581 + _18669 + 32 <= return_data.size
                        s = 0
                        while s < _18669:
                            mem[s + _18557 + ceil32(return_data.size) + 32] = mem[s + _18557 + _18581 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18669) > _18669:
                            mem[_18669 + _18557 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13432 + _16075 + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _13415 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13432) + _16075 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18558 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18582 = mem[_18558]
                        require mem[_18558] <= test266151307()
                        require _18558 + mem[_18558] + 31 < _18558 + return_data.size
                        _18670 = mem[_18558 + mem[_18558]]
                        if mem[_18558 + mem[_18558]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18558 + mem[_18558]]) + 32 < 0 or _18558 + ceil32(return_data.size) + ceil32(mem[_18558 + mem[_18558]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18558 + ceil32(return_data.size) + ceil32(mem[_18558 + mem[_18558]]) + 32
                        mem[_18558 + ceil32(return_data.size)] = _18670
                        require _18582 + _18670 + 32 <= return_data.size
                        s = 0
                        while s < _18670:
                            mem[s + _18558 + ceil32(return_data.size) + 32] = mem[s + _18558 + _18582 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18670) > _18670:
                            mem[_18670 + _18558 + ceil32(return_data.size) + 32] = 0
                else:
                    mem[_13432 + _13460 + 32] = 0
                    _16076 = mem[64]
                    mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_13384)
                    mem[mem[64] + 36] = Mask(32, 224, _13392)
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = _13432
                    s = 0
                    while s < _13432:
                        mem[s + mem[64] + 132] = mem[s + _13460 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13432) <= _13432:
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _13415 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13432) + _16076 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18559 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18583 = mem[_18559]
                        require mem[_18559] <= test266151307()
                        require _18559 + mem[_18559] + 31 < _18559 + return_data.size
                        _18671 = mem[_18559 + mem[_18559]]
                        if mem[_18559 + mem[_18559]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18559 + mem[_18559]]) + 32 < 0 or _18559 + ceil32(return_data.size) + ceil32(mem[_18559 + mem[_18559]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18559 + ceil32(return_data.size) + ceil32(mem[_18559 + mem[_18559]]) + 32
                        mem[_18559 + ceil32(return_data.size)] = _18671
                        require _18583 + _18671 + 32 <= return_data.size
                        s = 0
                        while s < _18671:
                            mem[s + _18559 + ceil32(return_data.size) + 32] = mem[s + _18559 + _18583 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18671) > _18671:
                            mem[_18671 + _18559 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13432 + _16076 + 132] = 0
                        require ext_code.size(address(stor103.field_0))
                        call address(stor103.field_0).mem[mem[64] len 4] with:
                           value _13415 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_13432) + _16076 + -mem[64] + 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18560 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _18584 = mem[_18560]
                        require mem[_18560] <= test266151307()
                        require _18560 + mem[_18560] + 31 < _18560 + return_data.size
                        _18672 = mem[_18560 + mem[_18560]]
                        if mem[_18560 + mem[_18560]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_18560 + mem[_18560]]) + 32 < 0 or _18560 + ceil32(return_data.size) + ceil32(mem[_18560 + mem[_18560]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _18560 + ceil32(return_data.size) + ceil32(mem[_18560 + mem[_18560]]) + 32
                        mem[_18560 + ceil32(return_data.size)] = _18672
                        require _18584 + _18672 + 32 <= return_data.size
                        s = 0
                        while s < _18672:
                            mem[s + _18560 + ceil32(return_data.size) + 32] = mem[s + _18560 + _18584 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_18672) > _18672:
                            mem[_18672 + _18560 + ceil32(return_data.size) + 32] = 0
            if idx == -1:
                revert with 0, 17
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            idx = idx + 1
            continue 
        _10707 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        _10708 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]]
        require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] >= 128
        require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 32] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 44 len 20]
        _10720 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64]
        require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 64] == mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 76 len 20]
        _10725 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96]
        require mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] <= test266151307()
        require mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 63 < mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]] + 32
        _10728 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32] > test266151307():
            revert with 0, 65
        _10739 = mem[64]
        if mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160] + 96] + 32]) + 32
        mem[_10739] = _10728
        require _10725 + _10728 + 64 <= _10708 + 32
        s = 0
        while s < _10728:
            mem[s + _10739 + 32] = mem[s + _10707 + _10725 + 64]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            s = s + 32
            continue 
        if ceil32(_10728) > _10728:
            mem[_10728 + _10739 + 32] = 0
            _13358 = mem[_10707 + 128]
            require mem[_10707 + 128] <= test266151307()
            require _10707 + mem[_10707 + 128] + 63 < _10707 + _10708 + 32
            _13372 = mem[_10707 + mem[_10707 + 128] + 32]
            if mem[_10707 + mem[_10707 + 128] + 32] > test266151307():
                revert with 0, 65
            _13400 = mem[64]
            if mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32
            mem[_13400] = _13372
            require _13358 + _13372 + 64 <= _10708 + 32
            s = 0
            while s < _13372:
                mem[s + _13400 + 32] = mem[s + _10707 + _13358 + 64]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_13372) <= _13372:
                mem[mem[64] + 4] = address(_10720)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10720)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_16359] == bool(mem[_16359])
                if not mem[_16359]:
                    revert with 0, 'Invalid after adapter verification!'
                _16869 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _13372
                s = 0
                while s < _13372:
                    mem[s + mem[64] + 100] = mem[s + _13400 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_13372) <= _13372:
                    _18525 = mem[64]
                    mem[mem[64]] = ceil32(_13372) + _16869 + -mem[64] + 68
                    mem[64] = ceil32(_13372) + _16869 + 100
                    _18541 = mem[_10739]
                    s = 0
                    while s < _18541:
                        mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _10739 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_18541) <= _18541:
                        mem[_18525 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16869 + 100 len _18541])) or mem[_18525 + 36 len 28]
                        _19785 = mem[_18525]
                        s = 0
                        while s < _19785:
                            mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _18525 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19785) > _19785:
                            mem[_19785 + ceil32(_13372) + _16869 + 100] = 0
                        delegate address(_10720).mem[ceil32(_13372) + _16869 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_13372) + _16869 + 104 len _19785 - 4]
                    else:
                        mem[_18541 + ceil32(_13372) + _16869 + 100] = 0
                        mem[_18525 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16869 + 100 len _18541])) or mem[_18525 + 36 len 28]
                        _19786 = mem[_18525]
                        s = 0
                        while s < _19786:
                            mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _18525 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19786) > _19786:
                            mem[_19786 + ceil32(_13372) + _16869 + 100] = 0
                        delegate address(_10720).mem[ceil32(_13372) + _16869 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_13372) + _16869 + 104 len _19786 - 4]
                else:
                    mem[_13372 + _16869 + 100] = 0
                    _18526 = mem[64]
                    mem[mem[64]] = ceil32(_13372) + _16869 + -mem[64] + 68
                    mem[64] = ceil32(_13372) + _16869 + 100
                    _18542 = mem[_10739]
                    s = 0
                    while s < _18542:
                        mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _10739 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_18542) <= _18542:
                        mem[_18526 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16869 + 100 len _18542])) or mem[_18526 + 36 len 28]
                        _19787 = mem[_18526]
                        s = 0
                        while s < _19787:
                            mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _18526 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19787) > _19787:
                            mem[_19787 + ceil32(_13372) + _16869 + 100] = 0
                        delegate address(_10720).mem[ceil32(_13372) + _16869 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_13372) + _16869 + 104 len _19787 - 4]
                    else:
                        mem[_18542 + ceil32(_13372) + _16869 + 100] = 0
                        mem[_18526 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16869 + 100 len _18542])) or mem[_18526 + 36 len 28]
                        _19788 = mem[_18526]
                        s = 0
                        while s < _19788:
                            mem[s + ceil32(_13372) + _16869 + 100] = mem[s + _18526 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_19788) > _19788:
                            mem[_19788 + ceil32(_13372) + _16869 + 100] = 0
                        delegate address(_10720).mem[ceil32(_13372) + _16869 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_13372) + _16869 + 104 len _19788 - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_13372) + _16869 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_13372) + _16869 + 104] = 32
                    mem[ceil32(_13372) + _16869 + 136] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + ceil32(_13372) + _16869 + 168] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + ceil32(_13372) + _16869 + 168] = 0
                    revert with 0, 32, mem[96], mem[ceil32(_13372) + _16869 + 168 len ceil32(mem[96])]
                mem[64] = ceil32(_13372) + _16869 + ceil32(return_data.size) + 101
                mem[ceil32(_13372) + _16869 + 100] = return_data.size
                mem[ceil32(_13372) + _16869 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_13372) + _16869 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_13372) + _16869 + ceil32(return_data.size) + 105] = 32
                mem[ceil32(_13372) + _16869 + ceil32(return_data.size) + 137] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + ceil32(_13372) + _16869 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_13372) + _16869 + 132]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + ceil32(_13372) + _16869 + ceil32(return_data.size) + 169] = 0
                revert with 0, 32, return_data.size, mem[ceil32(_13372) + _16869 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
            mem[_13372 + _13400 + 32] = 0
            mem[mem[64] + 4] = address(_10720)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10720)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16360] == bool(mem[_16360])
            if not mem[_16360]:
                revert with 0, 'Invalid after adapter verification!'
            _16871 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _13372
            s = 0
            while s < _13372:
                mem[s + mem[64] + 100] = mem[s + _13400 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_13372) <= _13372:
                _18527 = mem[64]
                mem[mem[64]] = ceil32(_13372) + _16871 + -mem[64] + 68
                mem[64] = ceil32(_13372) + _16871 + 100
                _18543 = mem[_10739]
                s = 0
                while s < _18543:
                    mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _10739 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18543) <= _18543:
                    mem[_18527 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16871 + 100 len _18543])) or mem[_18527 + 36 len 28]
                    _19789 = mem[_18527]
                    s = 0
                    while s < _19789:
                        mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _18527 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19789) > _19789:
                        mem[_19789 + ceil32(_13372) + _16871 + 100] = 0
                    delegate address(_10720).mem[ceil32(_13372) + _16871 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_13372) + _16871 + 104 len _19789 - 4]
                else:
                    mem[_18543 + ceil32(_13372) + _16871 + 100] = 0
                    mem[_18527 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16871 + 100 len _18543])) or mem[_18527 + 36 len 28]
                    _19790 = mem[_18527]
                    s = 0
                    while s < _19790:
                        mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _18527 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19790) > _19790:
                        mem[_19790 + ceil32(_13372) + _16871 + 100] = 0
                    delegate address(_10720).mem[ceil32(_13372) + _16871 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_13372) + _16871 + 104 len _19790 - 4]
            else:
                mem[_13372 + _16871 + 100] = 0
                _18528 = mem[64]
                mem[mem[64]] = ceil32(_13372) + _16871 + -mem[64] + 68
                mem[64] = ceil32(_13372) + _16871 + 100
                _18544 = mem[_10739]
                s = 0
                while s < _18544:
                    mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _10739 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18544) <= _18544:
                    mem[_18528 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16871 + 100 len _18544])) or mem[_18528 + 36 len 28]
                    _19791 = mem[_18528]
                    s = 0
                    while s < _19791:
                        mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _18528 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19791) > _19791:
                        mem[_19791 + ceil32(_13372) + _16871 + 100] = 0
                    delegate address(_10720).mem[ceil32(_13372) + _16871 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_13372) + _16871 + 104 len _19791 - 4]
                else:
                    mem[_18544 + ceil32(_13372) + _16871 + 100] = 0
                    mem[_18528 + 32] = Mask(32, 224, sha3(mem[ceil32(_13372) + _16871 + 100 len _18544])) or mem[_18528 + 36 len 28]
                    _19792 = mem[_18528]
                    s = 0
                    while s < _19792:
                        mem[s + ceil32(_13372) + _16871 + 100] = mem[s + _18528 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19792) > _19792:
                        mem[_19792 + ceil32(_13372) + _16871 + 100] = 0
                    delegate address(_10720).mem[ceil32(_13372) + _16871 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_13372) + _16871 + 104 len _19792 - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_13372) + _16871 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_13372) + _16871 + 104] = 32
                mem[ceil32(_13372) + _16871 + 136] = mem[96]
                idx = 0
                while idx < mem[96]:
                    mem[idx + ceil32(_13372) + _16871 + 168] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + ceil32(_13372) + _16871 + 168] = 0
                revert with 0, 32, mem[96], mem[ceil32(_13372) + _16871 + 168 len ceil32(mem[96])]
            mem[64] = ceil32(_13372) + _16871 + ceil32(return_data.size) + 101
            mem[ceil32(_13372) + _16871 + 100] = return_data.size
            mem[ceil32(_13372) + _16871 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            mem[ceil32(_13372) + _16871 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_13372) + _16871 + ceil32(return_data.size) + 105] = 32
            mem[ceil32(_13372) + _16871 + ceil32(return_data.size) + 137] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + ceil32(_13372) + _16871 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_13372) + _16871 + 132]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + ceil32(_13372) + _16871 + ceil32(return_data.size) + 169] = 0
            revert with 0, 32, return_data.size, mem[ceil32(_13372) + _16871 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
        _13357 = mem[_10707 + 128]
        require mem[_10707 + 128] <= test266151307()
        require _10707 + mem[_10707 + 128] + 63 < _10707 + _10708 + 32
        _13371 = mem[_10707 + mem[_10707 + 128] + 32]
        if mem[_10707 + mem[_10707 + 128] + 32] > test266151307():
            revert with 0, 65
        _13399 = mem[64]
        if mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(mem[_10707 + mem[_10707 + 128] + 32]) + 32
        mem[_13399] = _13371
        require _13357 + _13371 + 64 <= _10708 + 32
        s = 0
        while s < _13371:
            mem[s + _13399 + 32] = mem[s + _10707 + _13357 + 64]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            s = s + 32
            continue 
        if ceil32(_13371) <= _13371:
            mem[mem[64] + 4] = address(_10720)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10720)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_16357] == bool(mem[_16357])
            if not mem[_16357]:
                revert with 0, 'Invalid after adapter verification!'
            _16865 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _13371
            s = 0
            while s < _13371:
                mem[s + mem[64] + 100] = mem[s + _13399 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_13371) <= _13371:
                _18521 = mem[64]
                mem[mem[64]] = ceil32(_13371) + 68
                mem[64] = ceil32(_13371) + mem[64] + 100
                _18537 = mem[_10739]
                s = 0
                while s < _18537:
                    mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _10739 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_18537) <= _18537:
                    mem[_18521 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16865 + 100 len _18537])) or mem[_18521 + 36 len 28]
                    _19777 = mem[_18521]
                    s = 0
                    while s < _19777:
                        mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _18521 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_19777) <= _19777:
                        delegate address(_10720).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _19777 + ceil32(_13371) + _16865 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 1
                                continue 
                            _20817 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _20945 = mem[96]
                            mem[mem[64] + 36] = mem[96]
                            idx = 0
                            while idx < _20945:
                                mem[idx + _20817 + 68] = mem[idx + 128]
                                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(_20945) > _20945:
                                mem[_20945 + _20817 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_20945) + _20817 + -mem[64] + 68
                        _20721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_20721] = return_data.size
                        mem[_20721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20818 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _20818 + 68] = mem[idx + _20721 + 32]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _20818 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _20818 + -mem[64] + 68
                    mem[_19777 + ceil32(_13371) + _16865 + 100] = 0
                    delegate address(_10720).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19777 + ceil32(_13371) + _16865 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20819 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20947 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20947:
                            mem[idx + _20819 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20947) > _20947:
                            mem[_20947 + _20819 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20947) + _20819 + -mem[64] + 68
                    _20722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20722] = return_data.size
                    mem[_20722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20820 + 68] = mem[idx + _20722 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20820 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20820 + -mem[64] + 68
                mem[_18537 + ceil32(_13371) + _16865 + 100] = 0
                mem[_18521 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16865 + 100 len _18537])) or mem[_18521 + 36 len 28]
                _19778 = mem[_18521]
                s = 0
                while s < _19778:
                    mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _18521 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19778) <= _19778:
                    delegate address(_10720).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19778 + ceil32(_13371) + _16865 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20821 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20949 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20949:
                            mem[idx + _20821 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20949) > _20949:
                            mem[_20949 + _20821 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20949) + _20821 + -mem[64] + 68
                    _20723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20723] = return_data.size
                    mem[_20723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20822 + 68] = mem[idx + _20723 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20822 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20822 + -mem[64] + 68
                mem[_19778 + ceil32(_13371) + _16865 + 100] = 0
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19778 + ceil32(_13371) + _16865 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20951 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20951:
                        mem[idx + _20823 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20951) > _20951:
                        mem[_20951 + _20823 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20951) + _20823 + -mem[64] + 68
                _20724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20724] = return_data.size
                mem[_20724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20824 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20824 + 68] = mem[idx + _20724 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20824 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20824 + -mem[64] + 68
            mem[_13371 + mem[64] + 100] = 0
            _18522 = mem[64]
            mem[mem[64]] = ceil32(_13371) + 68
            mem[64] = ceil32(_13371) + mem[64] + 100
            _18538 = mem[_10739]
            s = 0
            while s < _18538:
                mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _10739 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_18538) <= _18538:
                mem[_18522 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16865 + 100 len _18538])) or mem[_18522 + 36 len 28]
                _19779 = mem[_18522]
                s = 0
                while s < _19779:
                    mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _18522 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19779) <= _19779:
                    delegate address(_10720).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19779 + ceil32(_13371) + _16865 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20825 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20953 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20953:
                            mem[idx + _20825 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20953) > _20953:
                            mem[_20953 + _20825 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20953) + _20825 + -mem[64] + 68
                    _20725 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20725] = return_data.size
                    mem[_20725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20826 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20826 + 68] = mem[idx + _20725 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20826 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20826 + -mem[64] + 68
                mem[_19779 + ceil32(_13371) + _16865 + 100] = 0
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19779 + ceil32(_13371) + _16865 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20955 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20955:
                        mem[idx + _20827 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20955) > _20955:
                        mem[_20955 + _20827 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20955) + _20827 + -mem[64] + 68
                _20726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20726] = return_data.size
                mem[_20726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20828 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20828 + 68] = mem[idx + _20726 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20828 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20828 + -mem[64] + 68
            mem[_18538 + ceil32(_13371) + _16865 + 100] = 0
            mem[_18522 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16865 + 100 len _18538])) or mem[_18522 + 36 len 28]
            _19780 = mem[_18522]
            s = 0
            while s < _19780:
                mem[s + ceil32(_13371) + _16865 + 100] = mem[s + _18522 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_19780) <= _19780:
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19780 + ceil32(_13371) + _16865 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20829 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20957 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20957:
                        mem[idx + _20829 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20957) > _20957:
                        mem[_20957 + _20829 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20957) + _20829 + -mem[64] + 68
                _20727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20727] = return_data.size
                mem[_20727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20830 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20830 + 68] = mem[idx + _20727 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20830 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20830 + -mem[64] + 68
            mem[_19780 + ceil32(_13371) + _16865 + 100] = 0
            delegate address(_10720).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19780 + ceil32(_13371) + _16865 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20831 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _20959 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _20959:
                    mem[idx + _20831 + 68] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_20959) > _20959:
                    mem[_20959 + _20831 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_20959) + _20831 + -mem[64] + 68
            _20728 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_20728] = return_data.size
            mem[_20728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20832 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _20832 + 68] = mem[idx + _20728 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _20832 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _20832 + -mem[64] + 68
        mem[_13371 + _13399 + 32] = 0
        mem[mem[64] + 4] = address(_10720)
        require ext_code.size(address(stor103.field_0))
        staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                gas gas_remaining wei
               args address(_10720)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16358] == bool(mem[_16358])
        if not mem[_16358]:
            revert with 0, 'Invalid after adapter verification!'
        _16867 = mem[64]
        mem[mem[64] + 36] = 32
        mem[mem[64] + 68] = _13371
        s = 0
        while s < _13371:
            mem[s + mem[64] + 100] = mem[s + _13399 + 32]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            s = s + 32
            continue 
        if ceil32(_13371) <= _13371:
            _18523 = mem[64]
            mem[mem[64]] = ceil32(_13371) + 68
            mem[64] = ceil32(_13371) + mem[64] + 100
            _18539 = mem[_10739]
            s = 0
            while s < _18539:
                mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _10739 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_18539) <= _18539:
                mem[_18523 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16867 + 100 len _18539])) or mem[_18523 + 36 len 28]
                _19781 = mem[_18523]
                s = 0
                while s < _19781:
                    mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _18523 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    s = s + 32
                    continue 
                if ceil32(_19781) <= _19781:
                    delegate address(_10720).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _19781 + ceil32(_13371) + _16867 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 1
                            continue 
                        _20833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _20961 = mem[96]
                        mem[mem[64] + 36] = mem[96]
                        idx = 0
                        while idx < _20961:
                            mem[idx + _20833 + 68] = mem[idx + 128]
                            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(_20961) > _20961:
                            mem[_20961 + _20833 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_20961) + _20833 + -mem[64] + 68
                    _20729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_20729] = return_data.size
                    mem[_20729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20834 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _20834 + 68] = mem[idx + _20729 + 32]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _20834 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _20834 + -mem[64] + 68
                mem[_19781 + ceil32(_13371) + _16867 + 100] = 0
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19781 + ceil32(_13371) + _16867 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20963 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20963:
                        mem[idx + _20835 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20963) > _20963:
                        mem[_20963 + _20835 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20963) + _20835 + -mem[64] + 68
                _20730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20730] = return_data.size
                mem[_20730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20836 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20836 + 68] = mem[idx + _20730 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20836 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20836 + -mem[64] + 68
            mem[_18539 + ceil32(_13371) + _16867 + 100] = 0
            mem[_18523 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16867 + 100 len _18539])) or mem[_18523 + 36 len 28]
            _19782 = mem[_18523]
            s = 0
            while s < _19782:
                mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _18523 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_19782) <= _19782:
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19782 + ceil32(_13371) + _16867 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20837 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20965 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20965:
                        mem[idx + _20837 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20965) > _20965:
                        mem[_20965 + _20837 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20965) + _20837 + -mem[64] + 68
                _20731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20731] = return_data.size
                mem[_20731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20838 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20838 + 68] = mem[idx + _20731 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20838 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20838 + -mem[64] + 68
            mem[_19782 + ceil32(_13371) + _16867 + 100] = 0
            delegate address(_10720).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19782 + ceil32(_13371) + _16867 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _20967 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _20967:
                    mem[idx + _20839 + 68] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_20967) > _20967:
                    mem[_20967 + _20839 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_20967) + _20839 + -mem[64] + 68
            _20732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_20732] = return_data.size
            mem[_20732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20840 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _20840 + 68] = mem[idx + _20732 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _20840 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _20840 + -mem[64] + 68
        mem[_13371 + mem[64] + 100] = 0
        _18524 = mem[64]
        mem[mem[64]] = ceil32(_13371) + 68
        mem[64] = ceil32(_13371) + mem[64] + 100
        _18540 = mem[_10739]
        s = 0
        while s < _18540:
            mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _10739 + 32]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            s = s + 32
            continue 
        if ceil32(_18540) <= _18540:
            mem[_18524 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16867 + 100 len _18540])) or mem[_18524 + 36 len 28]
            _19783 = mem[_18524]
            s = 0
            while s < _19783:
                mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _18524 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                s = s + 32
                continue 
            if ceil32(_19783) <= _19783:
                delegate address(_10720).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _19783 + ceil32(_13371) + _16867 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 1
                        continue 
                    _20841 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _20969 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _20969:
                        mem[idx + _20841 + 68] = mem[idx + 128]
                        _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_20969) > _20969:
                        mem[_20969 + _20841 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_20969) + _20841 + -mem[64] + 68
                _20733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20733] = return_data.size
                mem[_20733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20842 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _20842 + 68] = mem[idx + _20733 + 32]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _20842 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _20842 + -mem[64] + 68
            mem[_19783 + ceil32(_13371) + _16867 + 100] = 0
            delegate address(_10720).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19783 + ceil32(_13371) + _16867 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20843 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _20971 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _20971:
                    mem[idx + _20843 + 68] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_20971) > _20971:
                    mem[_20971 + _20843 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_20971) + _20843 + -mem[64] + 68
            _20734 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_20734] = return_data.size
            mem[_20734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20844 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _20844 + 68] = mem[idx + _20734 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _20844 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _20844 + -mem[64] + 68
        mem[_18540 + ceil32(_13371) + _16867 + 100] = 0
        mem[_18524 + 32] = Mask(32, 224, sha3(mem[ceil32(_13371) + _16867 + 100 len _18540])) or mem[_18524 + 36 len 28]
        _19784 = mem[_18524]
        s = 0
        while s < _19784:
            mem[s + ceil32(_13371) + _16867 + 100] = mem[s + _18524 + 32]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            s = s + 32
            continue 
        if ceil32(_19784) <= _19784:
            delegate address(_10720).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19784 + ceil32(_13371) + _16867 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 1
                    continue 
                _20845 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _20973 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _20973:
                    mem[idx + _20845 + 68] = mem[idx + 128]
                    _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_20973) > _20973:
                    mem[_20973 + _20845 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_20973) + _20845 + -mem[64] + 68
            _20735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_20735] = return_data.size
            mem[_20735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20846 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _20846 + 68] = mem[idx + _20735 + 32]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + _20846 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _20846 + -mem[64] + 68
        mem[_19784 + ceil32(_13371) + _16867 + 100] = 0
        delegate address(_10720).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _19784 + ceil32(_13371) + _16867 + -mem[64] + 96]
        if not return_data.size:
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 1
                continue 
            _20847 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _20975 = mem[96]
            mem[mem[64] + 36] = mem[96]
            idx = 0
            while idx < _20975:
                mem[idx + _20847 + 68] = mem[idx + 128]
                _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                idx = idx + 32
                continue 
            if ceil32(_20975) > _20975:
                mem[_20975 + _20847 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_20975) + _20847 + -mem[64] + 68
        _20736 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_20736] = return_data.size
        mem[_20736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if idx == -1:
                revert with 0, 17
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            idx = idx + 1
            continue 
        _20848 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        idx = 0
        while idx < return_data.size:
            mem[idx + _20848 + 68] = mem[idx + _20736 + 32]
            _10682 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            idx = idx + 32
            continue 
        if ceil32(return_data.size) > return_data.size:
            mem[return_data.size + _20848 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _20848 + -mem[64] + 68
    _10689 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    _10697 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_10689 + 100] = 32
    mem[_10689 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    _10721 = mem[_10697]
    mem[_10689 + 164 len ceil32(mem[_10697])] = mem[_10697 + 32 len ceil32(mem[_10697])]
    if ceil32(_10721) > _10721:
        mem[_10721 + _10689 + 164] = 0
    call arg2 with:
         gas gas_remaining wei
        args mem[_10689 + 168 len _10721 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if not mem[96]:
            if arg3 > !arg4:
                revert with 0, 17
            if not arg3 + arg4:
                mem[_10689 + 200] = msg.sender
                mem[_10689 + 232] = arg3 + arg4
                mem[_10689 + 164] = 68
                mem[_10689 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_10689 + 264] = 32
                mem[_10689 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[_10689 + 328 len 96] = 0, msg.sender, arg3 + arg4, 0
                mem[_10689 + 396] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_10689 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_10689 + 360] == bool(mem[_10689 + 360])
                        if not mem[_10689 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_10689 + 168] = this.address
                mem[_10689 + 200] = msg.sender
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), msg.sender
                mem[_10689 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_10689 + ceil32(return_data.size) + 200] = msg.sender
                mem[_10689 + ceil32(return_data.size) + 232] = arg3 + arg4
                mem[_10689 + ceil32(return_data.size) + 164] = 68
                mem[_10689 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_10689 + ceil32(return_data.size) + 264] = 32
                mem[_10689 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[_10689 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, arg3 + arg4, 0
                mem[_10689 + ceil32(return_data.size) + 396] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_10689 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_10689 + ceil32(return_data.size) + 360] == bool(mem[_10689 + ceil32(return_data.size) + 360])
                        if not mem[_10689 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg3 > !arg4:
                revert with 0, 17
            if not arg3 + arg4:
                mem[_10689 + 200] = msg.sender
                mem[_10689 + 232] = arg3 + arg4
                mem[_10689 + 164] = 68
                mem[_10689 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_10689 + 264] = 32
                mem[_10689 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[_10689 + 328 len 96] = 0, msg.sender, arg3 + arg4, 0
                mem[_10689 + 396] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_10689 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_10689 + 360] == bool(mem[_10689 + 360])
                        if not mem[_10689 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_10689 + 168] = this.address
                mem[_10689 + 200] = msg.sender
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), msg.sender
                mem[_10689 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_10689 + ceil32(return_data.size) + 200] = msg.sender
                mem[_10689 + ceil32(return_data.size) + 232] = arg3 + arg4
                mem[_10689 + ceil32(return_data.size) + 164] = 68
                mem[_10689 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_10689 + ceil32(return_data.size) + 264] = 32
                mem[_10689 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[_10689 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, arg3 + arg4, 0
                var147001 = 96
                mem[_10689 + ceil32(return_data.size) + 396] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_10689 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_10689 + ceil32(return_data.size) + 360] == bool(mem[_10689 + ceil32(return_data.size) + 360])
                        if not mem[_10689 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    mem[_10689 + 164] = return_data.size
    mem[_10689 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if arg3 > !arg4:
            revert with 0, 17
        if not arg3 + arg4:
            mem[_10689 + ceil32(return_data.size) + 201] = msg.sender
            mem[_10689 + ceil32(return_data.size) + 233] = arg3 + arg4
            mem[_10689 + ceil32(return_data.size) + 165] = 68
            mem[_10689 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
            mem[_10689 + ceil32(return_data.size) + 265] = 32
            mem[_10689 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[_10689 + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, arg3 + arg4, 0
            mem[_10689 + ceil32(return_data.size) + 397] = 0
            call arg2 with:
               funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_10689 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_10689 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_10689 + ceil32(return_data.size) + 361] == bool(mem[_10689 + ceil32(return_data.size) + 361])
                    if not mem[_10689 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_10689 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
        mem[_10689 + ceil32(return_data.size) + 169] = this.address
        mem[_10689 + ceil32(return_data.size) + 201] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        mem[_10689 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg3 + arg4
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, arg3 + arg4, 0
    else:
        require return_data.size >= 32
        require mem[_10689 + 196] == bool(mem[_10689 + 196])
        if not mem[_10689 + 196]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg3 > !arg4:
            revert with 0, 17
        if not arg3 + arg4:
            mem[_10689 + ceil32(return_data.size) + 201] = msg.sender
            mem[_10689 + ceil32(return_data.size) + 233] = arg3 + arg4
            mem[_10689 + ceil32(return_data.size) + 165] = 68
            mem[_10689 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
            mem[_10689 + ceil32(return_data.size) + 265] = 32
            mem[_10689 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[_10689 + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, arg3 + arg4, 0
            mem[_10689 + ceil32(return_data.size) + 397] = 0
            call arg2 with:
               funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_10689 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[_10689 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_10689 + ceil32(return_data.size) + 361] == bool(mem[_10689 + ceil32(return_data.size) + 361])
                    if not mem[_10689 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[_10689 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
        mem[_10689 + ceil32(return_data.size) + 169] = this.address
        mem[_10689 + ceil32(return_data.size) + 201] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        mem[_10689 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg3 + arg4
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, arg3 + arg4, 0
        var147001 = 96
    mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
    call arg2 with:
       funct Mask(32, 224, 0, msg.sender, arg3 + arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg3 + arg4, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
    mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_10689 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10689 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_10689 + (4 * ceil32(return_data.size)) + 366] = 32
        mem[_10689 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
        revert with memory
          from _10689 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    require return_data.size >= 32
    require mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
    if mem[_10689 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
        return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
    mem[_10689 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_10689 + (4 * ceil32(return_data.size)) + 334] = 32
    mem[_10689 + (4 * ceil32(return_data.size)) + 366] = 42
    mem[_10689 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
    mem[_10689 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
    revert with memory
      from _10689 + (4 * ceil32(return_data.size)) + 330
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_9bc2b15c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _5176 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_5176] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_5176 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_5176 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _5176
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _5177 = mem[64]
    if mem[64] + (32 * ('cd', 68).length) + 32 < mem[64] or mem[64] + (32 * ('cd', 68).length) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_5177] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = _5177 + 32
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sub_49f961d6Address == msg.sender:
        _10346 = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        while idx < _10346:
            if idx >= mem[_5177]:
                revert with 0, 50
            if not mem[(32 * idx) + _5177 + 44 len 20]:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if not mem[(32 * idx) + 128]:
                    _10364 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _10365 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 64
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                    _10392 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] <= test266151307()
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                    _10400 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]
                    if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32] > test266151307():
                        revert with 0, 65
                    _10414 = mem[64]
                    if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32
                    mem[_10414] = _10400
                    require _10392 + _10400 + 64 <= _10365 + 32
                    s = 0
                    while s < _10400:
                        mem[s + _10414 + 32] = mem[s + _10364 + _10392 + 64]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_10400) <= _10400:
                        require _10400 >= 128
                        _12960 = mem[_10414 + 32]
                        require mem[_10414 + 32] == mem[_10414 + 44 len 20]
                        _12968 = mem[_10414 + 64]
                        require mem[_10414 + 64] == Mask(32, 224, mem[_10414 + 64])
                        _12984 = mem[_10414 + 96]
                        _12985 = mem[_10414 + 128]
                        require mem[_10414 + 128] <= test266151307()
                        require _10414 + mem[_10414 + 128] + 63 < _10414 + _10400 + 32
                        _13000 = mem[_10414 + mem[_10414 + 128] + 32]
                        if mem[_10414 + mem[_10414 + 128] + 32] > test266151307():
                            revert with 0, 65
                        _13016 = mem[64]
                        if mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32
                        mem[_13016] = _13000
                        require _12985 + _13000 + 64 <= _10400 + 32
                        s = 0
                        while s < _13000:
                            mem[s + _13016 + 32] = mem[s + _10414 + _12985 + 64]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13000) <= _13000:
                            _15448 = mem[64]
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12960)
                            mem[mem[64] + 36] = Mask(32, 224, _12968)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13000
                            s = 0
                            while s < _13000:
                                mem[s + mem[64] + 132] = mem[s + _13016 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_13000) <= _13000:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13000) + _15448 + -mem[64] + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17976 + mem[_17976]]) + 32 < 0 or _17976 + ceil32(return_data.size) + ceil32(mem[_17976 + mem[_17976]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17976 + ceil32(return_data.size) + ceil32(mem[_17976 + mem[_17976]]) + 32
                                mem[_17976 + ceil32(return_data.size)] = _18072
                                require _18008 + _18072 + 32 <= return_data.size
                                s = 0
                                while s < _18072:
                                    mem[s + _17976 + ceil32(return_data.size) + 32] = mem[s + _17976 + _18008 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18072) > _18072:
                                    mem[_18072 + _17976 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13000 + _15448 + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13000) + _15448 + -mem[64] + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17977 + mem[_17977]]) + 32 < 0 or _17977 + ceil32(return_data.size) + ceil32(mem[_17977 + mem[_17977]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17977 + ceil32(return_data.size) + ceil32(mem[_17977 + mem[_17977]]) + 32
                                mem[_17977 + ceil32(return_data.size)] = _18073
                                require _18009 + _18073 + 32 <= return_data.size
                                s = 0
                                while s < _18073:
                                    mem[s + _17977 + ceil32(return_data.size) + 32] = mem[s + _17977 + _18009 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18073) > _18073:
                                    mem[_18073 + _17977 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13000 + _13016 + 32] = 0
                            _15449 = mem[64]
                            mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_12960)
                            mem[mem[64] + 36] = Mask(32, 224, _12968)
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = _13000
                            s = 0
                            while s < _13000:
                                mem[s + mem[64] + 132] = mem[s + _13016 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_13000) <= _13000:
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13000) + _15449 + -mem[64] + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17978 + mem[_17978]]) + 32 < 0 or _17978 + ceil32(return_data.size) + ceil32(mem[_17978 + mem[_17978]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17978 + ceil32(return_data.size) + ceil32(mem[_17978 + mem[_17978]]) + 32
                                mem[_17978 + ceil32(return_data.size)] = _18074
                                require _18010 + _18074 + 32 <= return_data.size
                                s = 0
                                while s < _18074:
                                    mem[s + _17978 + ceil32(return_data.size) + 32] = mem[s + _17978 + _18010 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18074) > _18074:
                                    mem[_18074 + _17978 + ceil32(return_data.size) + 32] = 0
                            else:
                                mem[_13000 + _15449 + 132] = 0
                                require ext_code.size(address(stor103.field_0))
                                call address(stor103.field_0).mem[mem[64] len 4] with:
                                   value _12984 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_13000) + _15449 + -mem[64] + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17979 + mem[_17979]]) + 32 < 0 or _17979 + ceil32(return_data.size) + ceil32(mem[_17979 + mem[_17979]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17979 + ceil32(return_data.size) + ceil32(mem[_17979 + mem[_17979]]) + 32
                                mem[_17979 + ceil32(return_data.size)] = _18075
                                require _18011 + _18075 + 32 <= return_data.size
                                s = 0
                                while s < _18075:
                                    mem[s + _17979 + ceil32(return_data.size) + 32] = mem[s + _17979 + _18011 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18075) > _18075:
                                    mem[_18075 + _17979 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_10400 + _10414 + 32] = 0
                        require _10400 >= 128
                        _12961 = mem[_10414 + 32]
                        require mem[_10414 + 32] == mem[_10414 + 44 len 20]
                        _12969 = mem[_10414 + 64]
                        require mem[_10414 + 64] == Mask(32, 224, mem[_10414 + 64])
                        _12986 = mem[_10414 + 96]
                        _12987 = mem[_10414 + 128]
                        require mem[_10414 + 128] <= test266151307()
                        require _10414 + mem[_10414 + 128] + 63 < _10414 + _10400 + 32
                        _13001 = mem[_10414 + mem[_10414 + 128] + 32]
                        if mem[_10414 + mem[_10414 + 128] + 32] > test266151307():
                            revert with 0, 65
                        _13017 = mem[64]
                        if mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(mem[_10414 + mem[_10414 + 128] + 32]) + 32
                        mem[_13017] = _13001
                        require _12987 + _13001 + 64 <= _10400 + 32
                        s = 0
                        while s < _13001:
                            mem[s + _13017 + 32] = mem[s + _10414 + _12987 + 64]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17980 + mem[_17980]]) + 32 < 0 or _17980 + ceil32(return_data.size) + ceil32(mem[_17980 + mem[_17980]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17980 + ceil32(return_data.size) + ceil32(mem[_17980 + mem[_17980]]) + 32
                                mem[_17980 + ceil32(return_data.size)] = _18076
                                require _18012 + _18076 + 32 <= return_data.size
                                s = 0
                                while s < _18076:
                                    mem[s + _17980 + ceil32(return_data.size) + 32] = mem[s + _17980 + _18012 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17981 + mem[_17981]]) + 32 < 0 or _17981 + ceil32(return_data.size) + ceil32(mem[_17981 + mem[_17981]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17981 + ceil32(return_data.size) + ceil32(mem[_17981 + mem[_17981]]) + 32
                                mem[_17981 + ceil32(return_data.size)] = _18077
                                require _18013 + _18077 + 32 <= return_data.size
                                s = 0
                                while s < _18077:
                                    mem[s + _17981 + ceil32(return_data.size) + 32] = mem[s + _17981 + _18013 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17982 + mem[_17982]]) + 32 < 0 or _17982 + ceil32(return_data.size) + ceil32(mem[_17982 + mem[_17982]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17982 + ceil32(return_data.size) + ceil32(mem[_17982 + mem[_17982]]) + 32
                                mem[_17982 + ceil32(return_data.size)] = _18078
                                require _18014 + _18078 + 32 <= return_data.size
                                s = 0
                                while s < _18078:
                                    mem[s + _17982 + ceil32(return_data.size) + 32] = mem[s + _17982 + _18014 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17983 + mem[_17983]]) + 32 < 0 or _17983 + ceil32(return_data.size) + ceil32(mem[_17983 + mem[_17983]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17983 + ceil32(return_data.size) + ceil32(mem[_17983 + mem[_17983]]) + 32
                                mem[_17983 + ceil32(return_data.size)] = _18079
                                require _18015 + _18079 + 32 <= return_data.size
                                s = 0
                                while s < _18079:
                                    mem[s + _17983 + ceil32(return_data.size) + 32] = mem[s + _17983 + _18015 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18079) > _18079:
                                    mem[_18079 + _17983 + ceil32(return_data.size) + 32] = 0
                    if idx == -1:
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _10366 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _10367 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 128
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                _10393 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 76 len 20]
                _10401 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] <= test266151307()
                require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                _10408 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]
                if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32] > test266151307():
                    revert with 0, 65
                _10418 = mem[64]
                if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32
                mem[_10418] = _10408
                require _10401 + _10408 + 64 <= _10367 + 32
                s = 0
                while s < _10408:
                    mem[s + _10418 + 32] = mem[s + _10366 + _10401 + 64]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_10408) <= _10408:
                    _12936 = mem[_10366 + 128]
                    require mem[_10366 + 128] <= test266151307()
                    require _10366 + mem[_10366 + 128] + 63 < _10366 + _10367 + 32
                    _12952 = mem[_10366 + mem[_10366 + 128] + 32]
                    if mem[_10366 + mem[_10366 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _12976 = mem[64]
                    if mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32
                    mem[_12976] = _12952
                    require _12936 + _12952 + 64 <= _10367 + 32
                    s = 0
                    while s < _12952:
                        mem[s + _12976 + 32] = mem[s + _10366 + _12936 + 64]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12952) <= _12952:
                        mem[mem[64] + 4] = address(_10393)
                        require ext_code.size(address(stor103.field_0))
                        staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                                gas gas_remaining wei
                               args address(_10393)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15512] == bool(mem[_15512])
                        if not mem[_15512]:
                            revert with 0, 'Invalid after adapter verification!'
                        _15600 = mem[64]
                        mem[mem[64] + 36] = 32
                        mem[mem[64] + 68] = _12952
                        s = 0
                        while s < _12952:
                            mem[s + mem[64] + 100] = mem[s + _12976 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_12952) <= _12952:
                            _17888 = mem[64]
                            mem[mem[64]] = ceil32(_12952) + 68
                            mem[64] = ceil32(_12952) + mem[64] + 100
                            _17944 = mem[_10418]
                            s = 0
                            while s < _17944:
                                mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _10418 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_17944) <= _17944:
                                mem[_17888 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15600 + 100 len _17944])) or mem[_17888 + 36 len 28]
                                _20408 = mem[_17888]
                                s = 0
                                while s < _20408:
                                    mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _17888 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_20408) <= _20408:
                                    delegate address(_10393).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _20408 + ceil32(_12952) + _15600 + -mem[64] + 96]
                                    if not return_data.size:
                                        if delegate.return_code:
                                            if idx == -1:
                                                revert with 0, 17
                                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                                        idx = idx + 1
                                        continue 
                                    _22393 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = return_data.size
                                    idx = 0
                                    while idx < return_data.size:
                                        mem[idx + _22393 + 68] = mem[idx + _22264 + 32]
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(return_data.size) > return_data.size:
                                        mem[return_data.size + _22393 + 68] = 0
                                    revert with memory
                                      from mem[64]
                                       len ceil32(return_data.size) + _22393 + -mem[64] + 68
                                mem[_20408 + ceil32(_12952) + _15600 + 100] = 0
                                delegate address(_10393).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20408 + ceil32(_12952) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22395 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22395 + 68] = mem[idx + _22265 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22395 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22395 + -mem[64] + 68
                            mem[_17944 + ceil32(_12952) + _15600 + 100] = 0
                            mem[_17888 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15600 + 100 len _17944])) or mem[_17888 + 36 len 28]
                            _20409 = mem[_17888]
                            s = 0
                            while s < _20409:
                                mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _17888 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20409) <= _20409:
                                delegate address(_10393).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20409 + ceil32(_12952) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22397 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22397 + 68] = mem[idx + _22266 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22397 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22397 + -mem[64] + 68
                            mem[_20409 + ceil32(_12952) + _15600 + 100] = 0
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20409 + ceil32(_12952) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22399 + 68] = mem[idx + _22267 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17945) <= _17945:
                            mem[_17889 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15600 + 100 len _17945])) or mem[_17889 + 36 len 28]
                            _20410 = mem[_17889]
                            s = 0
                            while s < _20410:
                                mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _17889 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20410) <= _20410:
                                delegate address(_10393).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20410 + ceil32(_12952) + _15600 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22401 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22401 + 68] = mem[idx + _22268 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22401 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22401 + -mem[64] + 68
                            mem[_20410 + ceil32(_12952) + _15600 + 100] = 0
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20410 + ceil32(_12952) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22403 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22403 + 68] = mem[idx + _22269 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22403 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22403 + -mem[64] + 68
                        mem[_17945 + ceil32(_12952) + _15600 + 100] = 0
                        mem[_17889 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15600 + 100 len _17945])) or mem[_17889 + 36 len 28]
                        _20411 = mem[_17889]
                        s = 0
                        while s < _20411:
                            mem[s + ceil32(_12952) + _15600 + 100] = mem[s + _17889 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20411) <= _20411:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20411 + ceil32(_12952) + _15600 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22405 + 68] = mem[idx + _22270 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22405 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22405 + -mem[64] + 68
                        mem[_20411 + ceil32(_12952) + _15600 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20411 + ceil32(_12952) + _15600 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22407 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22407 + 68] = mem[idx + _22271 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22407 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22407 + -mem[64] + 68
                    mem[_12952 + _12976 + 32] = 0
                    mem[mem[64] + 4] = address(_10393)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10393)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15513] == bool(mem[_15513])
                    if not mem[_15513]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15602 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12952
                    s = 0
                    while s < _12952:
                        mem[s + mem[64] + 100] = mem[s + _12976 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12952) <= _12952:
                        _17890 = mem[64]
                        mem[mem[64]] = ceil32(_12952) + 68
                        mem[64] = ceil32(_12952) + mem[64] + 100
                        _17946 = mem[_10418]
                        s = 0
                        while s < _17946:
                            mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17946) <= _17946:
                            mem[_17890 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15602 + 100 len _17946])) or mem[_17890 + 36 len 28]
                            _20412 = mem[_17890]
                            s = 0
                            while s < _20412:
                                mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _17890 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20412) <= _20412:
                                delegate address(_10393).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20412 + ceil32(_12952) + _15602 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22409 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22409 + 68] = mem[idx + _22272 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22409 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22409 + -mem[64] + 68
                            mem[_20412 + ceil32(_12952) + _15602 + 100] = 0
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20412 + ceil32(_12952) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22411 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22411 + 68] = mem[idx + _22273 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22411 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22411 + -mem[64] + 68
                        mem[_17946 + ceil32(_12952) + _15602 + 100] = 0
                        mem[_17890 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15602 + 100 len _17946])) or mem[_17890 + 36 len 28]
                        _20413 = mem[_17890]
                        s = 0
                        while s < _20413:
                            mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _17890 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20413) <= _20413:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20413 + ceil32(_12952) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22413 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22413 + 68] = mem[idx + _22274 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22413 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22413 + -mem[64] + 68
                        mem[_20413 + ceil32(_12952) + _15602 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20413 + ceil32(_12952) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22415 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22415 + 68] = mem[idx + _22275 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17947) <= _17947:
                        mem[_17891 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15602 + 100 len _17947])) or mem[_17891 + 36 len 28]
                        _20414 = mem[_17891]
                        s = 0
                        while s < _20414:
                            mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _17891 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20414) <= _20414:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20414 + ceil32(_12952) + _15602 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22417 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22417 + 68] = mem[idx + _22276 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22417 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22417 + -mem[64] + 68
                        mem[_20414 + ceil32(_12952) + _15602 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20414 + ceil32(_12952) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22419 + 68] = mem[idx + _22277 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22419 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22419 + -mem[64] + 68
                    mem[_17947 + ceil32(_12952) + _15602 + 100] = 0
                    mem[_17891 + 32] = Mask(32, 224, sha3(mem[ceil32(_12952) + _15602 + 100 len _17947])) or mem[_17891 + 36 len 28]
                    _20415 = mem[_17891]
                    s = 0
                    while s < _20415:
                        mem[s + ceil32(_12952) + _15602 + 100] = mem[s + _17891 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20415) <= _20415:
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20415 + ceil32(_12952) + _15602 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22421 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22421 + 68] = mem[idx + _22278 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22421 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22421 + -mem[64] + 68
                    mem[_20415 + ceil32(_12952) + _15602 + 100] = 0
                    delegate address(_10393).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20415 + ceil32(_12952) + _15602 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22423 + 68] = mem[idx + _22279 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22423 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22423 + -mem[64] + 68
                mem[_10408 + _10418 + 32] = 0
                _12937 = mem[_10366 + 128]
                require mem[_10366 + 128] <= test266151307()
                require _10366 + mem[_10366 + 128] + 63 < _10366 + _10367 + 32
                _12953 = mem[_10366 + mem[_10366 + 128] + 32]
                if mem[_10366 + mem[_10366 + 128] + 32] > test266151307():
                    revert with 0, 65
                _12977 = mem[64]
                if mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10366 + mem[_10366 + 128] + 32]) + 32
                mem[_12977] = _12953
                require _12937 + _12953 + 64 <= _10367 + 32
                s = 0
                while s < _12953:
                    mem[s + _12977 + 32] = mem[s + _10366 + _12937 + 64]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12953) <= _12953:
                    mem[mem[64] + 4] = address(_10393)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10393)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15514] == bool(mem[_15514])
                    if not mem[_15514]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15604 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12953
                    s = 0
                    while s < _12953:
                        mem[s + mem[64] + 100] = mem[s + _12977 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12953) <= _12953:
                        _17892 = mem[64]
                        mem[mem[64]] = ceil32(_12953) + 68
                        mem[64] = ceil32(_12953) + mem[64] + 100
                        _17948 = mem[_10418]
                        s = 0
                        while s < _17948:
                            mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _10418 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17948) <= _17948:
                            mem[_17892 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15604 + 100 len _17948])) or mem[_17892 + 36 len 28]
                            _20416 = mem[_17892]
                            s = 0
                            while s < _20416:
                                mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _17892 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20416) <= _20416:
                                delegate address(_10393).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20416 + ceil32(_12953) + _15604 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22425 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22425 + 68] = mem[idx + _22280 + 32]
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22425 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22425 + -mem[64] + 68
                            mem[_20416 + ceil32(_12953) + _15604 + 100] = 0
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20416 + ceil32(_12953) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22427 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22427 + 68] = mem[idx + _22281 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22427 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22427 + -mem[64] + 68
                        mem[_17948 + ceil32(_12953) + _15604 + 100] = 0
                        mem[_17892 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15604 + 100 len _17948])) or mem[_17892 + 36 len 28]
                        _20417 = mem[_17892]
                        s = 0
                        while s < _20417:
                            mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _17892 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20417) <= _20417:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20417 + ceil32(_12953) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22429 + 68] = mem[idx + _22282 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22429 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22429 + -mem[64] + 68
                        mem[_20417 + ceil32(_12953) + _15604 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20417 + ceil32(_12953) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22431 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22431 + 68] = mem[idx + _22283 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17949) <= _17949:
                        mem[_17893 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15604 + 100 len _17949])) or mem[_17893 + 36 len 28]
                        _20418 = mem[_17893]
                        s = 0
                        while s < _20418:
                            mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _17893 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20418) <= _20418:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20418 + ceil32(_12953) + _15604 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22433 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22433 + 68] = mem[idx + _22284 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22433 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22433 + -mem[64] + 68
                        mem[_20418 + ceil32(_12953) + _15604 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20418 + ceil32(_12953) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22435 + 68] = mem[idx + _22285 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22435 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22435 + -mem[64] + 68
                    mem[_17949 + ceil32(_12953) + _15604 + 100] = 0
                    mem[_17893 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15604 + 100 len _17949])) or mem[_17893 + 36 len 28]
                    _20419 = mem[_17893]
                    s = 0
                    while s < _20419:
                        mem[s + ceil32(_12953) + _15604 + 100] = mem[s + _17893 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20419) <= _20419:
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20419 + ceil32(_12953) + _15604 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22437 + 68] = mem[idx + _22286 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22437 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22437 + -mem[64] + 68
                    mem[_20419 + ceil32(_12953) + _15604 + 100] = 0
                    delegate address(_10393).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20419 + ceil32(_12953) + _15604 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22439 + 68] = mem[idx + _22287 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22439 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22439 + -mem[64] + 68
                mem[_12953 + _12977 + 32] = 0
                mem[mem[64] + 4] = address(_10393)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10393)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15515] == bool(mem[_15515])
                if not mem[_15515]:
                    revert with 0, 'Invalid after adapter verification!'
                _15606 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12953
                s = 0
                while s < _12953:
                    mem[s + mem[64] + 100] = mem[s + _12977 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12953) <= _12953:
                    _17894 = mem[64]
                    mem[mem[64]] = ceil32(_12953) + 68
                    mem[64] = ceil32(_12953) + mem[64] + 100
                    _17950 = mem[_10418]
                    s = 0
                    while s < _17950:
                        mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _10418 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17950) <= _17950:
                        mem[_17894 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15606 + 100 len _17950])) or mem[_17894 + 36 len 28]
                        _20420 = mem[_17894]
                        s = 0
                        while s < _20420:
                            mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _17894 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20420) <= _20420:
                            delegate address(_10393).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20420 + ceil32(_12953) + _15606 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22441 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22441 + 68] = mem[idx + _22288 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22441 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22441 + -mem[64] + 68
                        mem[_20420 + ceil32(_12953) + _15606 + 100] = 0
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20420 + ceil32(_12953) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22443 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22443 + 68] = mem[idx + _22289 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22443 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22443 + -mem[64] + 68
                    mem[_17950 + ceil32(_12953) + _15606 + 100] = 0
                    mem[_17894 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15606 + 100 len _17950])) or mem[_17894 + 36 len 28]
                    _20421 = mem[_17894]
                    s = 0
                    while s < _20421:
                        mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _17894 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20421) <= _20421:
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20421 + ceil32(_12953) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22445 + 68] = mem[idx + _22290 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22445 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22445 + -mem[64] + 68
                    mem[_20421 + ceil32(_12953) + _15606 + 100] = 0
                    delegate address(_10393).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20421 + ceil32(_12953) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22447 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22447 + 68] = mem[idx + _22291 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                    mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _10418 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17951) <= _17951:
                    mem[_17895 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15606 + 100 len _17951])) or mem[_17895 + 36 len 28]
                    _20422 = mem[_17895]
                    s = 0
                    while s < _20422:
                        mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _17895 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20422) <= _20422:
                        delegate address(_10393).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20422 + ceil32(_12953) + _15606 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22449 + 68] = mem[idx + _22292 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22449 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22449 + -mem[64] + 68
                    mem[_20422 + ceil32(_12953) + _15606 + 100] = 0
                    delegate address(_10393).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20422 + ceil32(_12953) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22451 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22451 + 68] = mem[idx + _22293 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22451 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22451 + -mem[64] + 68
                mem[_17951 + ceil32(_12953) + _15606 + 100] = 0
                mem[_17895 + 32] = Mask(32, 224, sha3(mem[ceil32(_12953) + _15606 + 100 len _17951])) or mem[_17895 + 36 len 28]
                _20423 = mem[_17895]
                s = 0
                while s < _20423:
                    mem[s + ceil32(_12953) + _15606 + 100] = mem[s + _17895 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_20423) <= _20423:
                    delegate address(_10393).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20423 + ceil32(_12953) + _15606 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22453 + 68] = mem[idx + _22294 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22453 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22453 + -mem[64] + 68
                mem[_20423 + ceil32(_12953) + _15606 + 100] = 0
                delegate address(_10393).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20423 + ceil32(_12953) + _15606 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22455 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22455 + 68] = mem[idx + _22295 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22455 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22455 + -mem[64] + 68
            if idx >= mem[_5177]:
                revert with 0, 50
            stor104 = mem[(32 * idx) + _5177 + 44 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            if not mem[(32 * idx) + 128]:
                _10384 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _10385 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 64
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                _10402 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] <= test266151307()
                require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                _10410 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]
                if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32] > test266151307():
                    revert with 0, 65
                _10420 = mem[64]
                if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32
                mem[_10420] = _10410
                require _10402 + _10410 + 64 <= _10385 + 32
                s = 0
                while s < _10410:
                    mem[s + _10420 + 32] = mem[s + _10384 + _10402 + 64]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_10410) <= _10410:
                    require _10410 >= 128
                    _12962 = mem[_10420 + 32]
                    require mem[_10420 + 32] == mem[_10420 + 44 len 20]
                    _12970 = mem[_10420 + 64]
                    require mem[_10420 + 64] == Mask(32, 224, mem[_10420 + 64])
                    _12988 = mem[_10420 + 96]
                    _12989 = mem[_10420 + 128]
                    require mem[_10420 + 128] <= test266151307()
                    require _10420 + mem[_10420 + 128] + 63 < _10420 + _10410 + 32
                    _13002 = mem[_10420 + mem[_10420 + 128] + 32]
                    if mem[_10420 + mem[_10420 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _13018 = mem[64]
                    if mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32
                    mem[_13018] = _13002
                    require _12989 + _13002 + 64 <= _10410 + 32
                    s = 0
                    while s < _13002:
                        mem[s + _13018 + 32] = mem[s + _10420 + _12989 + 64]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 65
                            if ceil32(mem[_17984 + mem[_17984]]) + 32 < 0 or _17984 + ceil32(return_data.size) + ceil32(mem[_17984 + mem[_17984]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17984 + ceil32(return_data.size) + ceil32(mem[_17984 + mem[_17984]]) + 32
                            mem[_17984 + ceil32(return_data.size)] = _18144
                            require _18024 + _18144 + 32 <= return_data.size
                            s = 0
                            while s < _18144:
                                mem[s + _17984 + ceil32(return_data.size) + 32] = mem[s + _17984 + _18024 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18144) > _18144:
                                mem[_18144 + _17984 + ceil32(return_data.size) + 32] = 0
                        else:
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
                                revert with 0, 65
                            if ceil32(mem[_17985 + mem[_17985]]) + 32 < 0 or _17985 + ceil32(return_data.size) + ceil32(mem[_17985 + mem[_17985]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17985 + ceil32(return_data.size) + ceil32(mem[_17985 + mem[_17985]]) + 32
                            mem[_17985 + ceil32(return_data.size)] = _18145
                            require _18025 + _18145 + 32 <= return_data.size
                            s = 0
                            while s < _18145:
                                mem[s + _17985 + ceil32(return_data.size) + 32] = mem[s + _17985 + _18025 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18145) > _18145:
                                mem[_18145 + _17985 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13002 + _13018 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12962)
                        mem[mem[64] + 36] = Mask(32, 224, _12970)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13002
                        s = 0
                        while s < _13002:
                            mem[s + mem[64] + 132] = mem[s + _13018 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 65
                            if ceil32(mem[_17986 + mem[_17986]]) + 32 < 0 or _17986 + ceil32(return_data.size) + ceil32(mem[_17986 + mem[_17986]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17986 + ceil32(return_data.size) + ceil32(mem[_17986 + mem[_17986]]) + 32
                            mem[_17986 + ceil32(return_data.size)] = _18146
                            require _18026 + _18146 + 32 <= return_data.size
                            s = 0
                            while s < _18146:
                                mem[s + _17986 + ceil32(return_data.size) + 32] = mem[s + _17986 + _18026 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18146) > _18146:
                                mem[_18146 + _17986 + ceil32(return_data.size) + 32] = 0
                        else:
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
                                revert with 0, 65
                            if ceil32(mem[_17987 + mem[_17987]]) + 32 < 0 or _17987 + ceil32(return_data.size) + ceil32(mem[_17987 + mem[_17987]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17987 + ceil32(return_data.size) + ceil32(mem[_17987 + mem[_17987]]) + 32
                            mem[_17987 + ceil32(return_data.size)] = _18147
                            require _18027 + _18147 + 32 <= return_data.size
                            s = 0
                            while s < _18147:
                                mem[s + _17987 + ceil32(return_data.size) + 32] = mem[s + _17987 + _18027 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18147) > _18147:
                                mem[_18147 + _17987 + ceil32(return_data.size) + 32] = 0
                else:
                    mem[_10410 + _10420 + 32] = 0
                    require _10410 >= 128
                    _12963 = mem[_10420 + 32]
                    require mem[_10420 + 32] == mem[_10420 + 44 len 20]
                    _12971 = mem[_10420 + 64]
                    require mem[_10420 + 64] == Mask(32, 224, mem[_10420 + 64])
                    _12990 = mem[_10420 + 96]
                    _12991 = mem[_10420 + 128]
                    require mem[_10420 + 128] <= test266151307()
                    require _10420 + mem[_10420 + 128] + 63 < _10420 + _10410 + 32
                    _13003 = mem[_10420 + mem[_10420 + 128] + 32]
                    if mem[_10420 + mem[_10420 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _13019 = mem[64]
                    if mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10420 + mem[_10420 + 128] + 32]) + 32
                    mem[_13019] = _13003
                    require _12991 + _13003 + 64 <= _10410 + 32
                    s = 0
                    while s < _13003:
                        mem[s + _13019 + 32] = mem[s + _10420 + _12991 + 64]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13003) <= _13003:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12963)
                        mem[mem[64] + 36] = Mask(32, 224, _12971)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13003
                        s = 0
                        while s < _13003:
                            mem[s + mem[64] + 132] = mem[s + _13019 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13003) <= _13003:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12990 wei
                                 gas gas_remaining wei
                                args address(_12963), Mask(32, 224, _12971), Array(len=_13003, data=mem[mem[64] + 132 len ceil32(_13003)])
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
                                revert with 0, 65
                            if ceil32(mem[_17988 + mem[_17988]]) + 32 < 0 or _17988 + ceil32(return_data.size) + ceil32(mem[_17988 + mem[_17988]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17988 + ceil32(return_data.size) + ceil32(mem[_17988 + mem[_17988]]) + 32
                            mem[_17988 + ceil32(return_data.size)] = _18148
                            require _18028 + _18148 + 32 <= return_data.size
                            s = 0
                            while s < _18148:
                                mem[s + _17988 + ceil32(return_data.size) + 32] = mem[s + _17988 + _18028 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18148) > _18148:
                                mem[_18148 + _17988 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13003 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12990 wei
                                 gas gas_remaining wei
                                args address(_12963), Mask(32, 224, _12971), Array(len=_13003, data=mem[mem[64] + 132 len ceil32(_13003)])
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
                                revert with 0, 65
                            if ceil32(mem[_17989 + mem[_17989]]) + 32 < 0 or _17989 + ceil32(return_data.size) + ceil32(mem[_17989 + mem[_17989]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17989 + ceil32(return_data.size) + ceil32(mem[_17989 + mem[_17989]]) + 32
                            mem[_17989 + ceil32(return_data.size)] = _18149
                            require _18029 + _18149 + 32 <= return_data.size
                            s = 0
                            while s < _18149:
                                mem[s + _17989 + ceil32(return_data.size) + 32] = mem[s + _17989 + _18029 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18149) > _18149:
                                mem[_18149 + _17989 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13003 + _13019 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12963)
                        mem[mem[64] + 36] = Mask(32, 224, _12971)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13003
                        s = 0
                        while s < _13003:
                            mem[s + mem[64] + 132] = mem[s + _13019 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13003) <= _13003:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12990 wei
                                 gas gas_remaining wei
                                args address(_12963), Mask(32, 224, _12971), Array(len=_13003, data=mem[mem[64] + 132 len ceil32(_13003)])
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
                                revert with 0, 65
                            if ceil32(mem[_17990 + mem[_17990]]) + 32 < 0 or _17990 + ceil32(return_data.size) + ceil32(mem[_17990 + mem[_17990]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17990 + ceil32(return_data.size) + ceil32(mem[_17990 + mem[_17990]]) + 32
                            mem[_17990 + ceil32(return_data.size)] = _18150
                            require _18030 + _18150 + 32 <= return_data.size
                            s = 0
                            while s < _18150:
                                mem[s + _17990 + ceil32(return_data.size) + 32] = mem[s + _17990 + _18030 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18150) > _18150:
                                mem[_18150 + _17990 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13003 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12990 wei
                                 gas gas_remaining wei
                                args address(_12963), Mask(32, 224, _12971), Array(len=_13003, data=mem[mem[64] + 132 len ceil32(_13003)])
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
                                revert with 0, 65
                            if ceil32(mem[_17991 + mem[_17991]]) + 32 < 0 or _17991 + ceil32(return_data.size) + ceil32(mem[_17991 + mem[_17991]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _17991 + ceil32(return_data.size) + ceil32(mem[_17991 + mem[_17991]]) + 32
                            mem[_17991 + ceil32(return_data.size)] = _18151
                            require _18031 + _18151 + 32 <= return_data.size
                            s = 0
                            while s < _18151:
                                mem[s + _17991 + ceil32(return_data.size) + 32] = mem[s + _17991 + _18031 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18151) > _18151:
                                mem[_18151 + _17991 + ceil32(return_data.size) + 32] = 0
                if idx == -1:
                    revert with 0, 17
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                idx = idx + 1
                continue 
            _10386 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _10387 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 128
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
            _10403 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 76 len 20]
            _10411 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] <= test266151307()
            require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
            _10415 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]
            if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32] > test266151307():
                revert with 0, 65
            _10422 = mem[64]
            if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32
            mem[_10422] = _10415
            require _10411 + _10415 + 64 <= _10387 + 32
            s = 0
            while s < _10415:
                mem[s + _10422 + 32] = mem[s + _10386 + _10411 + 64]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_10415) <= _10415:
                _12938 = mem[_10386 + 128]
                require mem[_10386 + 128] <= test266151307()
                require _10386 + mem[_10386 + 128] + 63 < _10386 + _10387 + 32
                _12954 = mem[_10386 + mem[_10386 + 128] + 32]
                if mem[_10386 + mem[_10386 + 128] + 32] > test266151307():
                    revert with 0, 65
                _12978 = mem[64]
                if mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32
                mem[_12978] = _12954
                require _12938 + _12954 + 64 <= _10387 + 32
                s = 0
                while s < _12954:
                    mem[s + _12978 + 32] = mem[s + _10386 + _12938 + 64]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12954) <= _12954:
                    mem[mem[64] + 4] = address(_10403)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10403)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15516] == bool(mem[_15516])
                    if not mem[_15516]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15616 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12954
                    s = 0
                    while s < _12954:
                        mem[s + mem[64] + 100] = mem[s + _12978 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12954) <= _12954:
                        _17904 = mem[64]
                        mem[mem[64]] = ceil32(_12954) + _15616 + -mem[64] + 68
                        mem[64] = ceil32(_12954) + _15616 + 100
                        _17952 = mem[_10422]
                        s = 0
                        while s < _17952:
                            mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _10422 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17952) <= _17952:
                            mem[_17904 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15616 + 100 len _17952])) or mem[_17904 + 36 len 28]
                            _20424 = mem[_17904]
                            s = 0
                            while s < _20424:
                                mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _17904 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20424) > _20424:
                                mem[_20424 + ceil32(_12954) + _15616 + 100] = 0
                            delegate address(_10403).mem[ceil32(_12954) + _15616 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12954) + _15616 + 104 len _20424 - 4]
                        else:
                            mem[_17952 + ceil32(_12954) + _15616 + 100] = 0
                            mem[_17904 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15616 + 100 len _17952])) or mem[_17904 + 36 len 28]
                            _20425 = mem[_17904]
                            s = 0
                            while s < _20425:
                                mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _17904 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20425) > _20425:
                                mem[_20425 + ceil32(_12954) + _15616 + 100] = 0
                            delegate address(_10403).mem[ceil32(_12954) + _15616 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12954) + _15616 + 104 len _20425 - 4]
                    else:
                        mem[_12954 + _15616 + 100] = 0
                        _17905 = mem[64]
                        mem[mem[64]] = ceil32(_12954) + _15616 + -mem[64] + 68
                        mem[64] = ceil32(_12954) + _15616 + 100
                        _17953 = mem[_10422]
                        s = 0
                        while s < _17953:
                            mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _10422 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17953) <= _17953:
                            mem[_17905 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15616 + 100 len _17953])) or mem[_17905 + 36 len 28]
                            _20426 = mem[_17905]
                            s = 0
                            while s < _20426:
                                mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _17905 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20426) > _20426:
                                mem[_20426 + ceil32(_12954) + _15616 + 100] = 0
                            delegate address(_10403).mem[ceil32(_12954) + _15616 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12954) + _15616 + 104 len _20426 - 4]
                        else:
                            mem[_17953 + ceil32(_12954) + _15616 + 100] = 0
                            mem[_17905 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15616 + 100 len _17953])) or mem[_17905 + 36 len 28]
                            _20427 = mem[_17905]
                            s = 0
                            while s < _20427:
                                mem[s + ceil32(_12954) + _15616 + 100] = mem[s + _17905 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20427) > _20427:
                                mem[_20427 + ceil32(_12954) + _15616 + 100] = 0
                            delegate address(_10403).mem[ceil32(_12954) + _15616 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12954) + _15616 + 104 len _20427 - 4]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        mem[ceil32(_12954) + _15616 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_12954) + _15616 + 104] = 32
                        mem[ceil32(_12954) + _15616 + 136] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + ceil32(_12954) + _15616 + 168] = mem[idx + 128]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + ceil32(_12954) + _15616 + 168] = 0
                        revert with 0, 32, mem[96], mem[ceil32(_12954) + _15616 + 168 len ceil32(mem[96])]
                    mem[64] = ceil32(_12954) + _15616 + ceil32(return_data.size) + 101
                    mem[ceil32(_12954) + _15616 + 100] = return_data.size
                    mem[ceil32(_12954) + _15616 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12954) + _15616 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12954) + _15616 + ceil32(return_data.size) + 105] = 32
                    mem[ceil32(_12954) + _15616 + ceil32(return_data.size) + 137] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + ceil32(_12954) + _15616 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12954) + _15616 + 132]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + ceil32(_12954) + _15616 + ceil32(return_data.size) + 169] = 0
                    revert with 0, 32, return_data.size, mem[ceil32(_12954) + _15616 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
                mem[_12954 + _12978 + 32] = 0
                mem[mem[64] + 4] = address(_10403)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10403)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15517] == bool(mem[_15517])
                if not mem[_15517]:
                    revert with 0, 'Invalid after adapter verification!'
                _15618 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12954
                s = 0
                while s < _12954:
                    mem[s + mem[64] + 100] = mem[s + _12978 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12954) <= _12954:
                    _17906 = mem[64]
                    mem[mem[64]] = ceil32(_12954) + _15618 + -mem[64] + 68
                    mem[64] = ceil32(_12954) + _15618 + 100
                    _17954 = mem[_10422]
                    s = 0
                    while s < _17954:
                        mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17954) <= _17954:
                        mem[_17906 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15618 + 100 len _17954])) or mem[_17906 + 36 len 28]
                        _20428 = mem[_17906]
                        s = 0
                        while s < _20428:
                            mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _17906 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20428) > _20428:
                            mem[_20428 + ceil32(_12954) + _15618 + 100] = 0
                        delegate address(_10403).mem[ceil32(_12954) + _15618 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12954) + _15618 + 104 len _20428 - 4]
                    else:
                        mem[_17954 + ceil32(_12954) + _15618 + 100] = 0
                        mem[_17906 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15618 + 100 len _17954])) or mem[_17906 + 36 len 28]
                        _20429 = mem[_17906]
                        s = 0
                        while s < _20429:
                            mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _17906 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20429) > _20429:
                            mem[_20429 + ceil32(_12954) + _15618 + 100] = 0
                        delegate address(_10403).mem[ceil32(_12954) + _15618 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12954) + _15618 + 104 len _20429 - 4]
                else:
                    mem[_12954 + _15618 + 100] = 0
                    _17907 = mem[64]
                    mem[mem[64]] = ceil32(_12954) + _15618 + -mem[64] + 68
                    mem[64] = ceil32(_12954) + _15618 + 100
                    _17955 = mem[_10422]
                    s = 0
                    while s < _17955:
                        mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17955) <= _17955:
                        mem[_17907 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15618 + 100 len _17955])) or mem[_17907 + 36 len 28]
                        _20430 = mem[_17907]
                        s = 0
                        while s < _20430:
                            mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _17907 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20430) > _20430:
                            mem[_20430 + ceil32(_12954) + _15618 + 100] = 0
                        delegate address(_10403).mem[ceil32(_12954) + _15618 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12954) + _15618 + 104 len _20430 - 4]
                    else:
                        mem[_17955 + ceil32(_12954) + _15618 + 100] = 0
                        mem[_17907 + 32] = Mask(32, 224, sha3(mem[ceil32(_12954) + _15618 + 100 len _17955])) or mem[_17907 + 36 len 28]
                        _20431 = mem[_17907]
                        s = 0
                        while s < _20431:
                            mem[s + ceil32(_12954) + _15618 + 100] = mem[s + _17907 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20431) > _20431:
                            mem[_20431 + ceil32(_12954) + _15618 + 100] = 0
                        delegate address(_10403).mem[ceil32(_12954) + _15618 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12954) + _15618 + 104 len _20431 - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12954) + _15618 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12954) + _15618 + 104] = 32
                    mem[ceil32(_12954) + _15618 + 136] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + ceil32(_12954) + _15618 + 168] = mem[idx + 128]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + ceil32(_12954) + _15618 + 168] = 0
                    revert with 0, 32, mem[96], mem[ceil32(_12954) + _15618 + 168 len ceil32(mem[96])]
                mem[64] = ceil32(_12954) + _15618 + ceil32(return_data.size) + 101
                mem[ceil32(_12954) + _15618 + 100] = return_data.size
                mem[ceil32(_12954) + _15618 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_12954) + _15618 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12954) + _15618 + ceil32(return_data.size) + 105] = 32
                mem[ceil32(_12954) + _15618 + ceil32(return_data.size) + 137] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + ceil32(_12954) + _15618 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12954) + _15618 + 132]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + ceil32(_12954) + _15618 + ceil32(return_data.size) + 169] = 0
                revert with 0, 32, return_data.size, mem[ceil32(_12954) + _15618 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
            mem[_10415 + _10422 + 32] = 0
            _12939 = mem[_10386 + 128]
            require mem[_10386 + 128] <= test266151307()
            require _10386 + mem[_10386 + 128] + 63 < _10386 + _10387 + 32
            _12955 = mem[_10386 + mem[_10386 + 128] + 32]
            if mem[_10386 + mem[_10386 + 128] + 32] > test266151307():
                revert with 0, 65
            _12979 = mem[64]
            if mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[_10386 + mem[_10386 + 128] + 32]) + 32
            mem[_12979] = _12955
            require _12939 + _12955 + 64 <= _10387 + 32
            s = 0
            while s < _12955:
                mem[s + _12979 + 32] = mem[s + _10386 + _12939 + 64]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_12955) <= _12955:
                mem[mem[64] + 4] = address(_10403)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10403)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15518] == bool(mem[_15518])
                if not mem[_15518]:
                    revert with 0, 'Invalid after adapter verification!'
                _15620 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12955
                s = 0
                while s < _12955:
                    mem[s + mem[64] + 100] = mem[s + _12979 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12955) <= _12955:
                    _17908 = mem[64]
                    mem[mem[64]] = ceil32(_12955) + 68
                    mem[64] = ceil32(_12955) + mem[64] + 100
                    _17956 = mem[_10422]
                    s = 0
                    while s < _17956:
                        mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _10422 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17956) <= _17956:
                        mem[_17908 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15620 + 100 len _17956])) or mem[_17908 + 36 len 28]
                        _20432 = mem[_17908]
                        s = 0
                        while s < _20432:
                            mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _17908 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20432) <= _20432:
                            delegate address(_10403).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20432 + ceil32(_12955) + _15620 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22489 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22489 + 68] = mem[idx + _22312 + 32]
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22489 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22489 + -mem[64] + 68
                        mem[_20432 + ceil32(_12955) + _15620 + 100] = 0
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20432 + ceil32(_12955) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22491 + 68] = mem[idx + _22313 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22491 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22491 + -mem[64] + 68
                    mem[_17956 + ceil32(_12955) + _15620 + 100] = 0
                    mem[_17908 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15620 + 100 len _17956])) or mem[_17908 + 36 len 28]
                    _20433 = mem[_17908]
                    s = 0
                    while s < _20433:
                        mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _17908 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20433) <= _20433:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20433 + ceil32(_12955) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22493 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22493 + 68] = mem[idx + _22314 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22493 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22493 + -mem[64] + 68
                    mem[_20433 + ceil32(_12955) + _15620 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20433 + ceil32(_12955) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22495 + 68] = mem[idx + _22315 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                    mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _10422 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17957) <= _17957:
                    mem[_17909 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15620 + 100 len _17957])) or mem[_17909 + 36 len 28]
                    _20434 = mem[_17909]
                    s = 0
                    while s < _20434:
                        mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _17909 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20434) <= _20434:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20434 + ceil32(_12955) + _15620 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22497 + 68] = mem[idx + _22316 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22497 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22497 + -mem[64] + 68
                    mem[_20434 + ceil32(_12955) + _15620 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20434 + ceil32(_12955) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22499 + 68] = mem[idx + _22317 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22499 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22499 + -mem[64] + 68
                mem[_17957 + ceil32(_12955) + _15620 + 100] = 0
                mem[_17909 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15620 + 100 len _17957])) or mem[_17909 + 36 len 28]
                _20435 = mem[_17909]
                s = 0
                while s < _20435:
                    mem[s + ceil32(_12955) + _15620 + 100] = mem[s + _17909 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_20435) <= _20435:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20435 + ceil32(_12955) + _15620 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22501 + 68] = mem[idx + _22318 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22501 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22501 + -mem[64] + 68
                mem[_20435 + ceil32(_12955) + _15620 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20435 + ceil32(_12955) + _15620 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22503 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22503 + 68] = mem[idx + _22319 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22503 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22503 + -mem[64] + 68
            mem[_12955 + _12979 + 32] = 0
            mem[mem[64] + 4] = address(_10403)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10403)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15519] == bool(mem[_15519])
            if not mem[_15519]:
                revert with 0, 'Invalid after adapter verification!'
            _15622 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _12955
            s = 0
            while s < _12955:
                mem[s + mem[64] + 100] = mem[s + _12979 + 32]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_12955) <= _12955:
                _17910 = mem[64]
                mem[mem[64]] = ceil32(_12955) + 68
                mem[64] = ceil32(_12955) + mem[64] + 100
                _17958 = mem[_10422]
                s = 0
                while s < _17958:
                    mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _10422 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17958) <= _17958:
                    mem[_17910 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15622 + 100 len _17958])) or mem[_17910 + 36 len 28]
                    _20436 = mem[_17910]
                    s = 0
                    while s < _20436:
                        mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _17910 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20436) <= _20436:
                        delegate address(_10403).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20436 + ceil32(_12955) + _15622 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22505 + 68] = mem[idx + _22320 + 32]
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22505 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22505 + -mem[64] + 68
                    mem[_20436 + ceil32(_12955) + _15622 + 100] = 0
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20436 + ceil32(_12955) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22507 + 68] = mem[idx + _22321 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22507 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22507 + -mem[64] + 68
                mem[_17958 + ceil32(_12955) + _15622 + 100] = 0
                mem[_17910 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15622 + 100 len _17958])) or mem[_17910 + 36 len 28]
                _20437 = mem[_17910]
                s = 0
                while s < _20437:
                    mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _17910 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_20437) <= _20437:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20437 + ceil32(_12955) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22509 + 68] = mem[idx + _22322 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22509 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22509 + -mem[64] + 68
                mem[_20437 + ceil32(_12955) + _15622 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20437 + ceil32(_12955) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22511 + 68] = mem[idx + _22323 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _10422 + 32]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_17959) <= _17959:
                mem[_17911 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15622 + 100 len _17959])) or mem[_17911 + 36 len 28]
                _20438 = mem[_17911]
                s = 0
                while s < _20438:
                    mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _17911 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_20438) <= _20438:
                    delegate address(_10403).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20438 + ceil32(_12955) + _15622 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22513 + 68] = mem[idx + _22324 + 32]
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22513 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22513 + -mem[64] + 68
                mem[_20438 + ceil32(_12955) + _15622 + 100] = 0
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20438 + ceil32(_12955) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22515 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22515 + 68] = mem[idx + _22325 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22515 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22515 + -mem[64] + 68
            mem[_17959 + ceil32(_12955) + _15622 + 100] = 0
            mem[_17911 + 32] = Mask(32, 224, sha3(mem[ceil32(_12955) + _15622 + 100 len _17959])) or mem[_17911 + 36 len 28]
            _20439 = mem[_17911]
            s = 0
            while s < _20439:
                mem[s + ceil32(_12955) + _15622 + 100] = mem[s + _17911 + 32]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_20439) <= _20439:
                delegate address(_10403).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20439 + ceil32(_12955) + _15622 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22517 + 68] = mem[idx + _22326 + 32]
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22517 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22517 + -mem[64] + 68
            mem[_20439 + ceil32(_12955) + _15622 + 100] = 0
            delegate address(_10403).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _20439 + ceil32(_12955) + _15622 + -mem[64] + 96]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                    _10346 = mem[(32 * ('cd', 4).length) + 128]
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
                    revert with 0, 17
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                idx = idx + 1
                continue 
            _22519 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _22519 + 68] = mem[idx + _22327 + 32]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
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
        _10347 = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        while idx < _10347:
            if idx >= mem[_5177]:
                revert with 0, 50
            if not mem[(32 * idx) + _5177 + 44 len 20]:
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                if not mem[(32 * idx) + 128]:
                    _10369 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _10370 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 64
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                    _10396 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                    require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] <= test266151307()
                    require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                    _10404 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]
                    if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32] > test266151307():
                        revert with 0, 65
                    _10416 = mem[64]
                    if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32
                    mem[_10416] = _10404
                    require _10396 + _10404 + 64 <= _10370 + 32
                    s = 0
                    while s < _10404:
                        mem[s + _10416 + 32] = mem[s + _10369 + _10396 + 64]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_10404) <= _10404:
                        require _10404 >= 128
                        _12964 = mem[_10416 + 32]
                        require mem[_10416 + 32] == mem[_10416 + 44 len 20]
                        _12972 = mem[_10416 + 64]
                        require mem[_10416 + 64] == Mask(32, 224, mem[_10416 + 64])
                        _12992 = mem[_10416 + 96]
                        _12993 = mem[_10416 + 128]
                        require mem[_10416 + 128] <= test266151307()
                        require _10416 + mem[_10416 + 128] + 63 < _10416 + _10404 + 32
                        _13004 = mem[_10416 + mem[_10416 + 128] + 32]
                        if mem[_10416 + mem[_10416 + 128] + 32] > test266151307():
                            revert with 0, 65
                        _13020 = mem[64]
                        if mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32
                        mem[_13020] = _13004
                        require _12993 + _13004 + 64 <= _10404 + 32
                        s = 0
                        while s < _13004:
                            mem[s + _13020 + 32] = mem[s + _10416 + _12993 + 64]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17992 + mem[_17992]]) + 32 < 0 or _17992 + ceil32(return_data.size) + ceil32(mem[_17992 + mem[_17992]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17992 + ceil32(return_data.size) + ceil32(mem[_17992 + mem[_17992]]) + 32
                                mem[_17992 + ceil32(return_data.size)] = _18216
                                require _18040 + _18216 + 32 <= return_data.size
                                s = 0
                                while s < _18216:
                                    mem[s + _17992 + ceil32(return_data.size) + 32] = mem[s + _17992 + _18040 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17993 + mem[_17993]]) + 32 < 0 or _17993 + ceil32(return_data.size) + ceil32(mem[_17993 + mem[_17993]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17993 + ceil32(return_data.size) + ceil32(mem[_17993 + mem[_17993]]) + 32
                                mem[_17993 + ceil32(return_data.size)] = _18217
                                require _18041 + _18217 + 32 <= return_data.size
                                s = 0
                                while s < _18217:
                                    mem[s + _17993 + ceil32(return_data.size) + 32] = mem[s + _17993 + _18041 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17994 + mem[_17994]]) + 32 < 0 or _17994 + ceil32(return_data.size) + ceil32(mem[_17994 + mem[_17994]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17994 + ceil32(return_data.size) + ceil32(mem[_17994 + mem[_17994]]) + 32
                                mem[_17994 + ceil32(return_data.size)] = _18218
                                require _18042 + _18218 + 32 <= return_data.size
                                s = 0
                                while s < _18218:
                                    mem[s + _17994 + ceil32(return_data.size) + 32] = mem[s + _17994 + _18042 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17995 + mem[_17995]]) + 32 < 0 or _17995 + ceil32(return_data.size) + ceil32(mem[_17995 + mem[_17995]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17995 + ceil32(return_data.size) + ceil32(mem[_17995 + mem[_17995]]) + 32
                                mem[_17995 + ceil32(return_data.size)] = _18219
                                require _18043 + _18219 + 32 <= return_data.size
                                s = 0
                                while s < _18219:
                                    mem[s + _17995 + ceil32(return_data.size) + 32] = mem[s + _17995 + _18043 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18219) > _18219:
                                    mem[_18219 + _17995 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_10404 + _10416 + 32] = 0
                        require _10404 >= 128
                        _12965 = mem[_10416 + 32]
                        require mem[_10416 + 32] == mem[_10416 + 44 len 20]
                        _12973 = mem[_10416 + 64]
                        require mem[_10416 + 64] == Mask(32, 224, mem[_10416 + 64])
                        _12994 = mem[_10416 + 96]
                        _12995 = mem[_10416 + 128]
                        require mem[_10416 + 128] <= test266151307()
                        require _10416 + mem[_10416 + 128] + 63 < _10416 + _10404 + 32
                        _13005 = mem[_10416 + mem[_10416 + 128] + 32]
                        if mem[_10416 + mem[_10416 + 128] + 32] > test266151307():
                            revert with 0, 65
                        _13021 = mem[64]
                        if mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(mem[_10416 + mem[_10416 + 128] + 32]) + 32
                        mem[_13021] = _13005
                        require _12995 + _13005 + 64 <= _10404 + 32
                        s = 0
                        while s < _13005:
                            mem[s + _13021 + 32] = mem[s + _10416 + _12995 + 64]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17996 + mem[_17996]]) + 32 < 0 or _17996 + ceil32(return_data.size) + ceil32(mem[_17996 + mem[_17996]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17996 + ceil32(return_data.size) + ceil32(mem[_17996 + mem[_17996]]) + 32
                                mem[_17996 + ceil32(return_data.size)] = _18220
                                require _18044 + _18220 + 32 <= return_data.size
                                s = 0
                                while s < _18220:
                                    mem[s + _17996 + ceil32(return_data.size) + 32] = mem[s + _17996 + _18044 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17997 + mem[_17997]]) + 32 < 0 or _17997 + ceil32(return_data.size) + ceil32(mem[_17997 + mem[_17997]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17997 + ceil32(return_data.size) + ceil32(mem[_17997 + mem[_17997]]) + 32
                                mem[_17997 + ceil32(return_data.size)] = _18221
                                require _18045 + _18221 + 32 <= return_data.size
                                s = 0
                                while s < _18221:
                                    mem[s + _17997 + ceil32(return_data.size) + 32] = mem[s + _17997 + _18045 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17998 + mem[_17998]]) + 32 < 0 or _17998 + ceil32(return_data.size) + ceil32(mem[_17998 + mem[_17998]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17998 + ceil32(return_data.size) + ceil32(mem[_17998 + mem[_17998]]) + 32
                                mem[_17998 + ceil32(return_data.size)] = _18222
                                require _18046 + _18222 + 32 <= return_data.size
                                s = 0
                                while s < _18222:
                                    mem[s + _17998 + ceil32(return_data.size) + 32] = mem[s + _17998 + _18046 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 65
                                if ceil32(mem[_17999 + mem[_17999]]) + 32 < 0 or _17999 + ceil32(return_data.size) + ceil32(mem[_17999 + mem[_17999]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _17999 + ceil32(return_data.size) + ceil32(mem[_17999 + mem[_17999]]) + 32
                                mem[_17999 + ceil32(return_data.size)] = _18223
                                require _18047 + _18223 + 32 <= return_data.size
                                s = 0
                                while s < _18223:
                                    mem[s + _17999 + ceil32(return_data.size) + 32] = mem[s + _17999 + _18047 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_18223) > _18223:
                                    mem[_18223 + _17999 + ceil32(return_data.size) + 32] = 0
                    if idx == -1:
                        revert with 0, 17
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _10371 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _10372 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 128
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                _10397 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 76 len 20]
                _10405 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] <= test266151307()
                require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                _10409 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]
                if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32] > test266151307():
                    revert with 0, 65
                _10419 = mem[64]
                if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32
                mem[_10419] = _10409
                require _10405 + _10409 + 64 <= _10372 + 32
                s = 0
                while s < _10409:
                    mem[s + _10419 + 32] = mem[s + _10371 + _10405 + 64]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_10409) <= _10409:
                    _12940 = mem[_10371 + 128]
                    require mem[_10371 + 128] <= test266151307()
                    require _10371 + mem[_10371 + 128] + 63 < _10371 + _10372 + 32
                    _12956 = mem[_10371 + mem[_10371 + 128] + 32]
                    if mem[_10371 + mem[_10371 + 128] + 32] > test266151307():
                        revert with 0, 65
                    _12980 = mem[64]
                    if mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32
                    mem[_12980] = _12956
                    require _12940 + _12956 + 64 <= _10372 + 32
                    s = 0
                    while s < _12956:
                        mem[s + _12980 + 32] = mem[s + _10371 + _12940 + 64]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12956) <= _12956:
                        mem[mem[64] + 4] = address(_10397)
                        require ext_code.size(address(stor103.field_0))
                        staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                                gas gas_remaining wei
                               args address(_10397)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_15520] == bool(mem[_15520])
                        if not mem[_15520]:
                            revert with 0, 'Invalid after adapter verification!'
                        _15632 = mem[64]
                        mem[mem[64] + 36] = 32
                        mem[mem[64] + 68] = _12956
                        s = 0
                        while s < _12956:
                            mem[s + mem[64] + 100] = mem[s + _12980 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_12956) <= _12956:
                            _17920 = mem[64]
                            mem[mem[64]] = ceil32(_12956) + _15632 + -mem[64] + 68
                            mem[64] = ceil32(_12956) + _15632 + 100
                            _17960 = mem[_10419]
                            s = 0
                            while s < _17960:
                                mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _10419 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_17960) <= _17960:
                                mem[_17920 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15632 + 100 len _17960])) or mem[_17920 + 36 len 28]
                                _20440 = mem[_17920]
                                s = 0
                                while s < _20440:
                                    mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _17920 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_20440) > _20440:
                                    mem[_20440 + ceil32(_12956) + _15632 + 100] = 0
                                delegate address(_10397).mem[ceil32(_12956) + _15632 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(_12956) + _15632 + 104 len _20440 - 4]
                            else:
                                mem[_17960 + ceil32(_12956) + _15632 + 100] = 0
                                mem[_17920 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15632 + 100 len _17960])) or mem[_17920 + 36 len 28]
                                _20441 = mem[_17920]
                                s = 0
                                while s < _20441:
                                    mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _17920 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_20441) > _20441:
                                    mem[_20441 + ceil32(_12956) + _15632 + 100] = 0
                                delegate address(_10397).mem[ceil32(_12956) + _15632 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(_12956) + _15632 + 104 len _20441 - 4]
                        else:
                            mem[_12956 + _15632 + 100] = 0
                            _17921 = mem[64]
                            mem[mem[64]] = ceil32(_12956) + _15632 + -mem[64] + 68
                            mem[64] = ceil32(_12956) + _15632 + 100
                            _17961 = mem[_10419]
                            s = 0
                            while s < _17961:
                                mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _10419 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_17961) <= _17961:
                                mem[_17921 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15632 + 100 len _17961])) or mem[_17921 + 36 len 28]
                                _20442 = mem[_17921]
                                s = 0
                                while s < _20442:
                                    mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _17921 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_20442) > _20442:
                                    mem[_20442 + ceil32(_12956) + _15632 + 100] = 0
                                delegate address(_10397).mem[ceil32(_12956) + _15632 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(_12956) + _15632 + 104 len _20442 - 4]
                            else:
                                mem[_17961 + ceil32(_12956) + _15632 + 100] = 0
                                mem[_17921 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15632 + 100 len _17961])) or mem[_17921 + 36 len 28]
                                _20443 = mem[_17921]
                                s = 0
                                while s < _20443:
                                    mem[s + ceil32(_12956) + _15632 + 100] = mem[s + _17921 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_20443) > _20443:
                                    mem[_20443 + ceil32(_12956) + _15632 + 100] = 0
                                delegate address(_10397).mem[ceil32(_12956) + _15632 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(_12956) + _15632 + 104 len _20443 - 4]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            mem[ceil32(_12956) + _15632 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_12956) + _15632 + 104] = 32
                            mem[ceil32(_12956) + _15632 + 136] = mem[96]
                            idx = 0
                            while idx < mem[96]:
                                mem[idx + ceil32(_12956) + _15632 + 168] = mem[idx + 128]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + ceil32(_12956) + _15632 + 168] = 0
                            revert with 0, 32, mem[96], mem[ceil32(_12956) + _15632 + 168 len ceil32(mem[96])]
                        mem[64] = ceil32(_12956) + _15632 + ceil32(return_data.size) + 101
                        mem[ceil32(_12956) + _15632 + 100] = return_data.size
                        mem[ceil32(_12956) + _15632 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        mem[ceil32(_12956) + _15632 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_12956) + _15632 + ceil32(return_data.size) + 105] = 32
                        mem[ceil32(_12956) + _15632 + ceil32(return_data.size) + 137] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + ceil32(_12956) + _15632 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12956) + _15632 + 132]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + ceil32(_12956) + _15632 + ceil32(return_data.size) + 169] = 0
                        revert with 0, 32, return_data.size, mem[ceil32(_12956) + _15632 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
                    mem[_12956 + _12980 + 32] = 0
                    mem[mem[64] + 4] = address(_10397)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10397)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15521] == bool(mem[_15521])
                    if not mem[_15521]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15634 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12956
                    s = 0
                    while s < _12956:
                        mem[s + mem[64] + 100] = mem[s + _12980 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12956) <= _12956:
                        _17922 = mem[64]
                        mem[mem[64]] = ceil32(_12956) + _15634 + -mem[64] + 68
                        mem[64] = ceil32(_12956) + _15634 + 100
                        _17962 = mem[_10419]
                        s = 0
                        while s < _17962:
                            mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _10419 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17962) <= _17962:
                            mem[_17922 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15634 + 100 len _17962])) or mem[_17922 + 36 len 28]
                            _20444 = mem[_17922]
                            s = 0
                            while s < _20444:
                                mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _17922 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20444) > _20444:
                                mem[_20444 + ceil32(_12956) + _15634 + 100] = 0
                            delegate address(_10397).mem[ceil32(_12956) + _15634 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12956) + _15634 + 104 len _20444 - 4]
                        else:
                            mem[_17962 + ceil32(_12956) + _15634 + 100] = 0
                            mem[_17922 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15634 + 100 len _17962])) or mem[_17922 + 36 len 28]
                            _20445 = mem[_17922]
                            s = 0
                            while s < _20445:
                                mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _17922 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20445) > _20445:
                                mem[_20445 + ceil32(_12956) + _15634 + 100] = 0
                            delegate address(_10397).mem[ceil32(_12956) + _15634 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12956) + _15634 + 104 len _20445 - 4]
                    else:
                        mem[_12956 + _15634 + 100] = 0
                        _17923 = mem[64]
                        mem[mem[64]] = ceil32(_12956) + _15634 + -mem[64] + 68
                        mem[64] = ceil32(_12956) + _15634 + 100
                        _17963 = mem[_10419]
                        s = 0
                        while s < _17963:
                            mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _10419 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17963) <= _17963:
                            mem[_17923 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15634 + 100 len _17963])) or mem[_17923 + 36 len 28]
                            _20446 = mem[_17923]
                            s = 0
                            while s < _20446:
                                mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _17923 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20446) > _20446:
                                mem[_20446 + ceil32(_12956) + _15634 + 100] = 0
                            delegate address(_10397).mem[ceil32(_12956) + _15634 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12956) + _15634 + 104 len _20446 - 4]
                        else:
                            mem[_17963 + ceil32(_12956) + _15634 + 100] = 0
                            mem[_17923 + 32] = Mask(32, 224, sha3(mem[ceil32(_12956) + _15634 + 100 len _17963])) or mem[_17923 + 36 len 28]
                            _20447 = mem[_17923]
                            s = 0
                            while s < _20447:
                                mem[s + ceil32(_12956) + _15634 + 100] = mem[s + _17923 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20447) > _20447:
                                mem[_20447 + ceil32(_12956) + _15634 + 100] = 0
                            delegate address(_10397).mem[ceil32(_12956) + _15634 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12956) + _15634 + 104 len _20447 - 4]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        mem[ceil32(_12956) + _15634 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_12956) + _15634 + 104] = 32
                        mem[ceil32(_12956) + _15634 + 136] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + ceil32(_12956) + _15634 + 168] = mem[idx + 128]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + ceil32(_12956) + _15634 + 168] = 0
                        revert with 0, 32, mem[96], mem[ceil32(_12956) + _15634 + 168 len ceil32(mem[96])]
                    mem[64] = ceil32(_12956) + _15634 + ceil32(return_data.size) + 101
                    mem[ceil32(_12956) + _15634 + 100] = return_data.size
                    mem[ceil32(_12956) + _15634 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12956) + _15634 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12956) + _15634 + ceil32(return_data.size) + 105] = 32
                    mem[ceil32(_12956) + _15634 + ceil32(return_data.size) + 137] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + ceil32(_12956) + _15634 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12956) + _15634 + 132]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + ceil32(_12956) + _15634 + ceil32(return_data.size) + 169] = 0
                    revert with 0, 32, return_data.size, mem[ceil32(_12956) + _15634 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
                mem[_10409 + _10419 + 32] = 0
                _12941 = mem[_10371 + 128]
                require mem[_10371 + 128] <= test266151307()
                require _10371 + mem[_10371 + 128] + 63 < _10371 + _10372 + 32
                _12957 = mem[_10371 + mem[_10371 + 128] + 32]
                if mem[_10371 + mem[_10371 + 128] + 32] > test266151307():
                    revert with 0, 65
                _12981 = mem[64]
                if mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10371 + mem[_10371 + 128] + 32]) + 32
                mem[_12981] = _12957
                require _12941 + _12957 + 64 <= _10372 + 32
                s = 0
                while s < _12957:
                    mem[s + _12981 + 32] = mem[s + _10371 + _12941 + 64]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12957) <= _12957:
                    mem[mem[64] + 4] = address(_10397)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10397)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15522] == bool(mem[_15522])
                    if not mem[_15522]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15636 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12957
                    s = 0
                    while s < _12957:
                        mem[s + mem[64] + 100] = mem[s + _12981 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12957) <= _12957:
                        _17924 = mem[64]
                        mem[mem[64]] = ceil32(_12957) + 68
                        mem[64] = ceil32(_12957) + mem[64] + 100
                        _17964 = mem[_10419]
                        s = 0
                        while s < _17964:
                            mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _10419 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17964) <= _17964:
                            mem[_17924 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15636 + 100 len _17964])) or mem[_17924 + 36 len 28]
                            _20448 = mem[_17924]
                            s = 0
                            while s < _20448:
                                mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _17924 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20448) <= _20448:
                                delegate address(_10397).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _20448 + ceil32(_12957) + _15636 + -mem[64] + 96]
                                if not return_data.size:
                                    if delegate.return_code:
                                        if idx == -1:
                                            revert with 0, 17
                                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                        revert with 0, 17
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 1
                                    continue 
                                _22553 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                idx = 0
                                while idx < return_data.size:
                                    mem[idx + _22553 + 68] = mem[idx + _22344 + 32]
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + _22553 + 68] = 0
                                revert with memory
                                  from mem[64]
                                   len ceil32(return_data.size) + _22553 + -mem[64] + 68
                            mem[_20448 + ceil32(_12957) + _15636 + 100] = 0
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20448 + ceil32(_12957) + _15636 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22555 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22555 + 68] = mem[idx + _22345 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22555 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22555 + -mem[64] + 68
                        mem[_17964 + ceil32(_12957) + _15636 + 100] = 0
                        mem[_17924 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15636 + 100 len _17964])) or mem[_17924 + 36 len 28]
                        _20449 = mem[_17924]
                        s = 0
                        while s < _20449:
                            mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _17924 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20449) <= _20449:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20449 + ceil32(_12957) + _15636 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22557 + 68] = mem[idx + _22346 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22557 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22557 + -mem[64] + 68
                        mem[_20449 + ceil32(_12957) + _15636 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20449 + ceil32(_12957) + _15636 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22559 + 68] = mem[idx + _22347 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                    _17965 = mem[_10419]
                    s = 0
                    while s < _17965:
                        mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _10419 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17965) <= _17965:
                        mem[_17925 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15636 + 100 len _17965])) or mem[_17925 + 36 len 28]
                        _20450 = mem[_17925]
                        s = 0
                        while s < _20450:
                            mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _17925 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20450) <= _20450:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20450 + ceil32(_12957) + _15636 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22561 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22561 + 68] = mem[idx + _22348 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22561 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22561 + -mem[64] + 68
                        mem[_20450 + ceil32(_12957) + _15636 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20450 + ceil32(_12957) + _15636 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22563 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22563 + 68] = mem[idx + _22349 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22563 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22563 + -mem[64] + 68
                    mem[_17965 + ceil32(_12957) + _15636 + 100] = 0
                    mem[_17925 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15636 + 100 len _17965])) or mem[_17925 + 36 len 28]
                    _20451 = mem[_17925]
                    s = 0
                    while s < _20451:
                        mem[s + ceil32(_12957) + _15636 + 100] = mem[s + _17925 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20451) <= _20451:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20451 + ceil32(_12957) + _15636 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22565 + 68] = mem[idx + _22350 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22565 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22565 + -mem[64] + 68
                    mem[_20451 + ceil32(_12957) + _15636 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20451 + ceil32(_12957) + _15636 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22567 + 68] = mem[idx + _22351 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22567 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22567 + -mem[64] + 68
                mem[_12957 + _12981 + 32] = 0
                mem[mem[64] + 4] = address(_10397)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10397)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15523] == bool(mem[_15523])
                if not mem[_15523]:
                    revert with 0, 'Invalid after adapter verification!'
                _15638 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12957
                s = 0
                while s < _12957:
                    mem[s + mem[64] + 100] = mem[s + _12981 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12957) <= _12957:
                    _17926 = mem[64]
                    mem[mem[64]] = ceil32(_12957) + 68
                    mem[64] = ceil32(_12957) + mem[64] + 100
                    _17966 = mem[_10419]
                    s = 0
                    while s < _17966:
                        mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _10419 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17966) <= _17966:
                        mem[_17926 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15638 + 100 len _17966])) or mem[_17926 + 36 len 28]
                        _20452 = mem[_17926]
                        s = 0
                        while s < _20452:
                            mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _17926 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20452) <= _20452:
                            delegate address(_10397).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _20452 + ceil32(_12957) + _15638 + -mem[64] + 96]
                            if not return_data.size:
                                if delegate.return_code:
                                    if idx == -1:
                                        revert with 0, 17
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 1
                                continue 
                            _22569 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = return_data.size
                            idx = 0
                            while idx < return_data.size:
                                mem[idx + _22569 + 68] = mem[idx + _22352 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + _22569 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(return_data.size) + _22569 + -mem[64] + 68
                        mem[_20452 + ceil32(_12957) + _15638 + 100] = 0
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20452 + ceil32(_12957) + _15638 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22571 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22571 + 68] = mem[idx + _22353 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22571 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22571 + -mem[64] + 68
                    mem[_17966 + ceil32(_12957) + _15638 + 100] = 0
                    mem[_17926 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15638 + 100 len _17966])) or mem[_17926 + 36 len 28]
                    _20453 = mem[_17926]
                    s = 0
                    while s < _20453:
                        mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _17926 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20453) <= _20453:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20453 + ceil32(_12957) + _15638 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22573 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22573 + 68] = mem[idx + _22354 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22573 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22573 + -mem[64] + 68
                    mem[_20453 + ceil32(_12957) + _15638 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20453 + ceil32(_12957) + _15638 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22575 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22575 + 68] = mem[idx + _22355 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                _17967 = mem[_10419]
                s = 0
                while s < _17967:
                    mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _10419 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17967) <= _17967:
                    mem[_17927 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15638 + 100 len _17967])) or mem[_17927 + 36 len 28]
                    _20454 = mem[_17927]
                    s = 0
                    while s < _20454:
                        mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _17927 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20454) <= _20454:
                        delegate address(_10397).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _20454 + ceil32(_12957) + _15638 + -mem[64] + 96]
                        if not return_data.size:
                            if delegate.return_code:
                                if idx == -1:
                                    revert with 0, 17
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        _22577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[idx + _22577 + 68] = mem[idx + _22356 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + _22577 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(return_data.size) + _22577 + -mem[64] + 68
                    mem[_20454 + ceil32(_12957) + _15638 + 100] = 0
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20454 + ceil32(_12957) + _15638 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22579 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22579 + 68] = mem[idx + _22357 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22579 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22579 + -mem[64] + 68
                mem[_17967 + ceil32(_12957) + _15638 + 100] = 0
                mem[_17927 + 32] = Mask(32, 224, sha3(mem[ceil32(_12957) + _15638 + 100 len _17967])) or mem[_17927 + 36 len 28]
                _20455 = mem[_17927]
                s = 0
                while s < _20455:
                    mem[s + ceil32(_12957) + _15638 + 100] = mem[s + _17927 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_20455) <= _20455:
                    delegate address(_10397).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _20455 + ceil32(_12957) + _15638 + -mem[64] + 96]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    _22581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + _22581 + 68] = mem[idx + _22358 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + _22581 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(return_data.size) + _22581 + -mem[64] + 68
                mem[_20455 + ceil32(_12957) + _15638 + 100] = 0
                delegate address(_10397).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _20455 + ceil32(_12957) + _15638 + -mem[64] + 96]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 17
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                _22583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _22583 + 68] = mem[idx + _22359 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + _22583 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _22583 + -mem[64] + 68
            if idx >= mem[_5177]:
                revert with 0, 50
            stor104 = mem[(32 * idx) + _5177 + 44 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            if not mem[(32 * idx) + 128]:
                _10388 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _10389 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 64
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
                _10406 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
                require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] <= test266151307()
                require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
                _10412 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]
                if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32] > test266151307():
                    revert with 0, 65
                _10421 = mem[64]
                if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] + 32]) + 32
                mem[_10421] = _10412
                require _10406 + _10412 + 64 <= _10389 + 32
                s = 0
                while s < _10412:
                    mem[s + _10421 + 32] = mem[s + _10388 + _10406 + 64]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                        revert with 0, 65
                    _13022 = mem[64]
                    if mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32
                    mem[_13022] = _13006
                    require _12997 + _13006 + 64 <= _10412 + 32
                    s = 0
                    while s < _13006:
                        mem[s + _13022 + 32] = mem[s + _10421 + _12997 + 64]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 65
                            if ceil32(mem[_18000 + mem[_18000]]) + 32 < 0 or _18000 + ceil32(return_data.size) + ceil32(mem[_18000 + mem[_18000]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18000 + ceil32(return_data.size) + ceil32(mem[_18000 + mem[_18000]]) + 32
                            mem[_18000 + ceil32(return_data.size)] = _18288
                            require _18056 + _18288 + 32 <= return_data.size
                            s = 0
                            while s < _18288:
                                mem[s + _18000 + ceil32(return_data.size) + 32] = mem[s + _18000 + _18056 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18288) > _18288:
                                mem[_18288 + _18000 + ceil32(return_data.size) + 32] = 0
                        else:
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
                                revert with 0, 65
                            if ceil32(mem[_18001 + mem[_18001]]) + 32 < 0 or _18001 + ceil32(return_data.size) + ceil32(mem[_18001 + mem[_18001]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18001 + ceil32(return_data.size) + ceil32(mem[_18001 + mem[_18001]]) + 32
                            mem[_18001 + ceil32(return_data.size)] = _18289
                            require _18057 + _18289 + 32 <= return_data.size
                            s = 0
                            while s < _18289:
                                mem[s + _18001 + ceil32(return_data.size) + 32] = mem[s + _18001 + _18057 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18289) > _18289:
                                mem[_18289 + _18001 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13006 + _13022 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12966)
                        mem[mem[64] + 36] = Mask(32, 224, _12974)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13006
                        s = 0
                        while s < _13006:
                            mem[s + mem[64] + 132] = mem[s + _13022 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
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
                                revert with 0, 65
                            if ceil32(mem[_18002 + mem[_18002]]) + 32 < 0 or _18002 + ceil32(return_data.size) + ceil32(mem[_18002 + mem[_18002]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18002 + ceil32(return_data.size) + ceil32(mem[_18002 + mem[_18002]]) + 32
                            mem[_18002 + ceil32(return_data.size)] = _18290
                            require _18058 + _18290 + 32 <= return_data.size
                            s = 0
                            while s < _18290:
                                mem[s + _18002 + ceil32(return_data.size) + 32] = mem[s + _18002 + _18058 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18290) > _18290:
                                mem[_18290 + _18002 + ceil32(return_data.size) + 32] = 0
                        else:
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
                                revert with 0, 65
                            if ceil32(mem[_18003 + mem[_18003]]) + 32 < 0 or _18003 + ceil32(return_data.size) + ceil32(mem[_18003 + mem[_18003]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18003 + ceil32(return_data.size) + ceil32(mem[_18003 + mem[_18003]]) + 32
                            mem[_18003 + ceil32(return_data.size)] = _18291
                            require _18059 + _18291 + 32 <= return_data.size
                            s = 0
                            while s < _18291:
                                mem[s + _18003 + ceil32(return_data.size) + 32] = mem[s + _18003 + _18059 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18291) > _18291:
                                mem[_18291 + _18003 + ceil32(return_data.size) + 32] = 0
                else:
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
                        revert with 0, 65
                    _13023 = mem[64]
                    if mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(mem[_10421 + mem[_10421 + 128] + 32]) + 32
                    mem[_13023] = _13007
                    require _12999 + _13007 + 64 <= _10412 + 32
                    s = 0
                    while s < _13007:
                        mem[s + _13023 + 32] = mem[s + _10421 + _12999 + 64]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_13007) <= _13007:
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12967)
                        mem[mem[64] + 36] = Mask(32, 224, _12975)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13007
                        s = 0
                        while s < _13007:
                            mem[s + mem[64] + 132] = mem[s + _13023 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13007) <= _13007:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12998 wei
                                 gas gas_remaining wei
                                args address(_12967), Mask(32, 224, _12975), Array(len=_13007, data=mem[mem[64] + 132 len ceil32(_13007)])
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
                                revert with 0, 65
                            if ceil32(mem[_18004 + mem[_18004]]) + 32 < 0 or _18004 + ceil32(return_data.size) + ceil32(mem[_18004 + mem[_18004]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18004 + ceil32(return_data.size) + ceil32(mem[_18004 + mem[_18004]]) + 32
                            mem[_18004 + ceil32(return_data.size)] = _18292
                            require _18060 + _18292 + 32 <= return_data.size
                            s = 0
                            while s < _18292:
                                mem[s + _18004 + ceil32(return_data.size) + 32] = mem[s + _18004 + _18060 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18292) > _18292:
                                mem[_18292 + _18004 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13007 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12998 wei
                                 gas gas_remaining wei
                                args address(_12967), Mask(32, 224, _12975), Array(len=_13007, data=mem[mem[64] + 132 len ceil32(_13007)])
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
                                revert with 0, 65
                            if ceil32(mem[_18005 + mem[_18005]]) + 32 < 0 or _18005 + ceil32(return_data.size) + ceil32(mem[_18005 + mem[_18005]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18005 + ceil32(return_data.size) + ceil32(mem[_18005 + mem[_18005]]) + 32
                            mem[_18005 + ceil32(return_data.size)] = _18293
                            require _18061 + _18293 + 32 <= return_data.size
                            s = 0
                            while s < _18293:
                                mem[s + _18005 + ceil32(return_data.size) + 32] = mem[s + _18005 + _18061 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18293) > _18293:
                                mem[_18293 + _18005 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[_13007 + _13023 + 32] = 0
                        mem[mem[64]] = 0xd098d39a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_12967)
                        mem[mem[64] + 36] = Mask(32, 224, _12975)
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = _13007
                        s = 0
                        while s < _13007:
                            mem[s + mem[64] + 132] = mem[s + _13023 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_13007) <= _13007:
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12998 wei
                                 gas gas_remaining wei
                                args address(_12967), Mask(32, 224, _12975), Array(len=_13007, data=mem[mem[64] + 132 len ceil32(_13007)])
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
                                revert with 0, 65
                            if ceil32(mem[_18006 + mem[_18006]]) + 32 < 0 or _18006 + ceil32(return_data.size) + ceil32(mem[_18006 + mem[_18006]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18006 + ceil32(return_data.size) + ceil32(mem[_18006 + mem[_18006]]) + 32
                            mem[_18006 + ceil32(return_data.size)] = _18294
                            require _18062 + _18294 + 32 <= return_data.size
                            s = 0
                            while s < _18294:
                                mem[s + _18006 + ceil32(return_data.size) + 32] = mem[s + _18006 + _18062 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18294) > _18294:
                                mem[_18294 + _18006 + ceil32(return_data.size) + 32] = 0
                        else:
                            mem[_13007 + mem[64] + 132] = 0
                            require ext_code.size(address(stor103.field_0))
                            call address(stor103.field_0).0xd098d39a with:
                               value _12998 wei
                                 gas gas_remaining wei
                                args address(_12967), Mask(32, 224, _12975), Array(len=_13007, data=mem[mem[64] + 132 len ceil32(_13007)])
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
                                revert with 0, 65
                            if ceil32(mem[_18007 + mem[_18007]]) + 32 < 0 or _18007 + ceil32(return_data.size) + ceil32(mem[_18007 + mem[_18007]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _18007 + ceil32(return_data.size) + ceil32(mem[_18007 + mem[_18007]]) + 32
                            mem[_18007 + ceil32(return_data.size)] = _18295
                            require _18063 + _18295 + 32 <= return_data.size
                            s = 0
                            while s < _18295:
                                mem[s + _18007 + ceil32(return_data.size) + 32] = mem[s + _18007 + _18063 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_18295) > _18295:
                                mem[_18295 + _18007 + ceil32(return_data.size) + 32] = 0
                if idx == -1:
                    revert with 0, 17
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                idx = idx + 1
                continue 
            _10390 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _10391 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] >= 128
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20]
            _10407 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 64] == mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 76 len 20]
            _10413 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96]
            require mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] <= test266151307()
            require mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 63 < mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] + 32
            _10417 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]
            if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32] > test266151307():
                revert with 0, 65
            _10423 = mem[64]
            if mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 96] + 32]) + 32
            mem[_10423] = _10417
            require _10413 + _10417 + 64 <= _10391 + 32
            s = 0
            while s < _10417:
                mem[s + _10423 + 32] = mem[s + _10390 + _10413 + 64]
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_10417) <= _10417:
                _12942 = mem[_10390 + 128]
                require mem[_10390 + 128] <= test266151307()
                require _10390 + mem[_10390 + 128] + 63 < _10390 + _10391 + 32
                _12958 = mem[_10390 + mem[_10390 + 128] + 32]
                if mem[_10390 + mem[_10390 + 128] + 32] > test266151307():
                    revert with 0, 65
                _12982 = mem[64]
                if mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32
                mem[_12982] = _12958
                require _12942 + _12958 + 64 <= _10391 + 32
                s = 0
                while s < _12958:
                    mem[s + _12982 + 32] = mem[s + _10390 + _12942 + 64]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12958) <= _12958:
                    mem[mem[64] + 4] = address(_10407)
                    require ext_code.size(address(stor103.field_0))
                    staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                            gas gas_remaining wei
                           args address(_10407)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15524] == bool(mem[_15524])
                    if not mem[_15524]:
                        revert with 0, 'Invalid after adapter verification!'
                    _15648 = mem[64]
                    mem[mem[64] + 36] = 32
                    mem[mem[64] + 68] = _12958
                    s = 0
                    while s < _12958:
                        mem[s + mem[64] + 100] = mem[s + _12982 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_12958) <= _12958:
                        _17936 = mem[64]
                        mem[mem[64]] = ceil32(_12958) + _15648 + -mem[64] + 68
                        mem[64] = ceil32(_12958) + _15648 + 100
                        _17968 = mem[_10423]
                        s = 0
                        while s < _17968:
                            mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _10423 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17968) <= _17968:
                            mem[_17936 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15648 + 100 len _17968])) or mem[_17936 + 36 len 28]
                            _20456 = mem[_17936]
                            s = 0
                            while s < _20456:
                                mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _17936 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20456) > _20456:
                                mem[_20456 + ceil32(_12958) + _15648 + 100] = 0
                            delegate address(_10407).mem[ceil32(_12958) + _15648 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12958) + _15648 + 104 len _20456 - 4]
                        else:
                            mem[_17968 + ceil32(_12958) + _15648 + 100] = 0
                            mem[_17936 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15648 + 100 len _17968])) or mem[_17936 + 36 len 28]
                            _20457 = mem[_17936]
                            s = 0
                            while s < _20457:
                                mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _17936 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20457) > _20457:
                                mem[_20457 + ceil32(_12958) + _15648 + 100] = 0
                            delegate address(_10407).mem[ceil32(_12958) + _15648 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12958) + _15648 + 104 len _20457 - 4]
                    else:
                        mem[_12958 + _15648 + 100] = 0
                        _17937 = mem[64]
                        mem[mem[64]] = ceil32(_12958) + _15648 + -mem[64] + 68
                        mem[64] = ceil32(_12958) + _15648 + 100
                        _17969 = mem[_10423]
                        s = 0
                        while s < _17969:
                            mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _10423 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_17969) <= _17969:
                            mem[_17937 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15648 + 100 len _17969])) or mem[_17937 + 36 len 28]
                            _20458 = mem[_17937]
                            s = 0
                            while s < _20458:
                                mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _17937 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20458) > _20458:
                                mem[_20458 + ceil32(_12958) + _15648 + 100] = 0
                            delegate address(_10407).mem[ceil32(_12958) + _15648 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12958) + _15648 + 104 len _20458 - 4]
                        else:
                            mem[_17969 + ceil32(_12958) + _15648 + 100] = 0
                            mem[_17937 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15648 + 100 len _17969])) or mem[_17937 + 36 len 28]
                            _20459 = mem[_17937]
                            s = 0
                            while s < _20459:
                                mem[s + ceil32(_12958) + _15648 + 100] = mem[s + _17937 + 32]
                                _10347 = mem[(32 * ('cd', 4).length) + 128]
                                s = s + 32
                                continue 
                            if ceil32(_20459) > _20459:
                                mem[_20459 + ceil32(_12958) + _15648 + 100] = 0
                            delegate address(_10407).mem[ceil32(_12958) + _15648 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(_12958) + _15648 + 104 len _20459 - 4]
                    if not return_data.size:
                        if delegate.return_code:
                            if idx == -1:
                                revert with 0, 17
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 1
                            continue 
                        mem[ceil32(_12958) + _15648 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_12958) + _15648 + 104] = 32
                        mem[ceil32(_12958) + _15648 + 136] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + ceil32(_12958) + _15648 + 168] = mem[idx + 128]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + ceil32(_12958) + _15648 + 168] = 0
                        revert with 0, 32, mem[96], mem[ceil32(_12958) + _15648 + 168 len ceil32(mem[96])]
                    mem[64] = ceil32(_12958) + _15648 + ceil32(return_data.size) + 101
                    mem[ceil32(_12958) + _15648 + 100] = return_data.size
                    mem[ceil32(_12958) + _15648 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12958) + _15648 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12958) + _15648 + ceil32(return_data.size) + 105] = 32
                    mem[ceil32(_12958) + _15648 + ceil32(return_data.size) + 137] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[idx + ceil32(_12958) + _15648 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12958) + _15648 + 132]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(return_data.size) > return_data.size:
                        mem[return_data.size + ceil32(_12958) + _15648 + ceil32(return_data.size) + 169] = 0
                    revert with 0, 32, return_data.size, mem[ceil32(_12958) + _15648 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
                mem[_12958 + _12982 + 32] = 0
                mem[mem[64] + 4] = address(_10407)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10407)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15525] == bool(mem[_15525])
                if not mem[_15525]:
                    revert with 0, 'Invalid after adapter verification!'
                _15650 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12958
                s = 0
                while s < _12958:
                    mem[s + mem[64] + 100] = mem[s + _12982 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12958) <= _12958:
                    _17938 = mem[64]
                    mem[mem[64]] = ceil32(_12958) + _15650 + -mem[64] + 68
                    mem[64] = ceil32(_12958) + _15650 + 100
                    _17970 = mem[_10423]
                    s = 0
                    while s < _17970:
                        mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17970) <= _17970:
                        mem[_17938 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15650 + 100 len _17970])) or mem[_17938 + 36 len 28]
                        _20460 = mem[_17938]
                        s = 0
                        while s < _20460:
                            mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _17938 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20460) > _20460:
                            mem[_20460 + ceil32(_12958) + _15650 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12958) + _15650 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12958) + _15650 + 104 len _20460 - 4]
                    else:
                        mem[_17970 + ceil32(_12958) + _15650 + 100] = 0
                        mem[_17938 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15650 + 100 len _17970])) or mem[_17938 + 36 len 28]
                        _20461 = mem[_17938]
                        s = 0
                        while s < _20461:
                            mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _17938 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20461) > _20461:
                            mem[_20461 + ceil32(_12958) + _15650 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12958) + _15650 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12958) + _15650 + 104 len _20461 - 4]
                else:
                    mem[_12958 + _15650 + 100] = 0
                    _17939 = mem[64]
                    mem[mem[64]] = ceil32(_12958) + _15650 + -mem[64] + 68
                    mem[64] = ceil32(_12958) + _15650 + 100
                    _17971 = mem[_10423]
                    s = 0
                    while s < _17971:
                        mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17971) <= _17971:
                        mem[_17939 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15650 + 100 len _17971])) or mem[_17939 + 36 len 28]
                        _20462 = mem[_17939]
                        s = 0
                        while s < _20462:
                            mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _17939 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20462) > _20462:
                            mem[_20462 + ceil32(_12958) + _15650 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12958) + _15650 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12958) + _15650 + 104 len _20462 - 4]
                    else:
                        mem[_17971 + ceil32(_12958) + _15650 + 100] = 0
                        mem[_17939 + 32] = Mask(32, 224, sha3(mem[ceil32(_12958) + _15650 + 100 len _17971])) or mem[_17939 + 36 len 28]
                        _20463 = mem[_17939]
                        s = 0
                        while s < _20463:
                            mem[s + ceil32(_12958) + _15650 + 100] = mem[s + _17939 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20463) > _20463:
                            mem[_20463 + ceil32(_12958) + _15650 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12958) + _15650 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12958) + _15650 + 104 len _20463 - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12958) + _15650 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12958) + _15650 + 104] = 32
                    mem[ceil32(_12958) + _15650 + 136] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + ceil32(_12958) + _15650 + 168] = mem[idx + 128]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + ceil32(_12958) + _15650 + 168] = 0
                    revert with 0, 32, mem[96], mem[ceil32(_12958) + _15650 + 168 len ceil32(mem[96])]
                mem[64] = ceil32(_12958) + _15650 + ceil32(return_data.size) + 101
                mem[ceil32(_12958) + _15650 + 100] = return_data.size
                mem[ceil32(_12958) + _15650 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_12958) + _15650 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12958) + _15650 + ceil32(return_data.size) + 105] = 32
                mem[ceil32(_12958) + _15650 + ceil32(return_data.size) + 137] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + ceil32(_12958) + _15650 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12958) + _15650 + 132]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + ceil32(_12958) + _15650 + ceil32(return_data.size) + 169] = 0
                revert with 0, 32, return_data.size, mem[ceil32(_12958) + _15650 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
            mem[_10417 + _10423 + 32] = 0
            _12943 = mem[_10390 + 128]
            require mem[_10390 + 128] <= test266151307()
            require _10390 + mem[_10390 + 128] + 63 < _10390 + _10391 + 32
            _12959 = mem[_10390 + mem[_10390 + 128] + 32]
            if mem[_10390 + mem[_10390 + 128] + 32] > test266151307():
                revert with 0, 65
            _12983 = mem[64]
            if mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32 < mem[64] or mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(mem[_10390 + mem[_10390 + 128] + 32]) + 32
            mem[_12983] = _12959
            require _12943 + _12959 + 64 <= _10391 + 32
            s = 0
            while s < _12959:
                mem[s + _12983 + 32] = mem[s + _10390 + _12943 + 64]
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_12959) <= _12959:
                mem[mem[64] + 4] = address(_10407)
                require ext_code.size(address(stor103.field_0))
                staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                        gas gas_remaining wei
                       args address(_10407)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15526] == bool(mem[_15526])
                if not mem[_15526]:
                    revert with 0, 'Invalid after adapter verification!'
                _15652 = mem[64]
                mem[mem[64] + 36] = 32
                mem[mem[64] + 68] = _12959
                s = 0
                while s < _12959:
                    mem[s + mem[64] + 100] = mem[s + _12983 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_12959) <= _12959:
                    _17940 = mem[64]
                    mem[mem[64]] = ceil32(_12959) + _15652 + -mem[64] + 68
                    mem[64] = ceil32(_12959) + _15652 + 100
                    _17972 = mem[_10423]
                    s = 0
                    while s < _17972:
                        mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17972) <= _17972:
                        mem[_17940 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15652 + 100 len _17972])) or mem[_17940 + 36 len 28]
                        _20464 = mem[_17940]
                        s = 0
                        while s < _20464:
                            mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _17940 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20464) > _20464:
                            mem[_20464 + ceil32(_12959) + _15652 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12959) + _15652 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12959) + _15652 + 104 len _20464 - 4]
                    else:
                        mem[_17972 + ceil32(_12959) + _15652 + 100] = 0
                        mem[_17940 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15652 + 100 len _17972])) or mem[_17940 + 36 len 28]
                        _20465 = mem[_17940]
                        s = 0
                        while s < _20465:
                            mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _17940 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20465) > _20465:
                            mem[_20465 + ceil32(_12959) + _15652 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12959) + _15652 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12959) + _15652 + 104 len _20465 - 4]
                else:
                    mem[_12959 + _15652 + 100] = 0
                    _17941 = mem[64]
                    mem[mem[64]] = ceil32(_12959) + _15652 + -mem[64] + 68
                    mem[64] = ceil32(_12959) + _15652 + 100
                    _17973 = mem[_10423]
                    s = 0
                    while s < _17973:
                        mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _10423 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_17973) <= _17973:
                        mem[_17941 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15652 + 100 len _17973])) or mem[_17941 + 36 len 28]
                        _20466 = mem[_17941]
                        s = 0
                        while s < _20466:
                            mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _17941 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20466) > _20466:
                            mem[_20466 + ceil32(_12959) + _15652 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12959) + _15652 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12959) + _15652 + 104 len _20466 - 4]
                    else:
                        mem[_17973 + ceil32(_12959) + _15652 + 100] = 0
                        mem[_17941 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15652 + 100 len _17973])) or mem[_17941 + 36 len 28]
                        _20467 = mem[_17941]
                        s = 0
                        while s < _20467:
                            mem[s + ceil32(_12959) + _15652 + 100] = mem[s + _17941 + 32]
                            _10347 = mem[(32 * ('cd', 4).length) + 128]
                            s = s + 32
                            continue 
                        if ceil32(_20467) > _20467:
                            mem[_20467 + ceil32(_12959) + _15652 + 100] = 0
                        delegate address(_10407).mem[ceil32(_12959) + _15652 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(_12959) + _15652 + 104 len _20467 - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx == -1:
                            revert with 0, 17
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 1
                        continue 
                    mem[ceil32(_12959) + _15652 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_12959) + _15652 + 104] = 32
                    mem[ceil32(_12959) + _15652 + 136] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + ceil32(_12959) + _15652 + 168] = mem[idx + 128]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + ceil32(_12959) + _15652 + 168] = 0
                    revert with 0, 32, mem[96], mem[ceil32(_12959) + _15652 + 168 len ceil32(mem[96])]
                mem[64] = ceil32(_12959) + _15652 + ceil32(return_data.size) + 101
                mem[ceil32(_12959) + _15652 + 100] = return_data.size
                mem[ceil32(_12959) + _15652 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_12959) + _15652 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12959) + _15652 + ceil32(return_data.size) + 105] = 32
                mem[ceil32(_12959) + _15652 + ceil32(return_data.size) + 137] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + ceil32(_12959) + _15652 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12959) + _15652 + 132]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + ceil32(_12959) + _15652 + ceil32(return_data.size) + 169] = 0
                revert with 0, 32, return_data.size, mem[ceil32(_12959) + _15652 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
            mem[_12959 + _12983 + 32] = 0
            mem[mem[64] + 4] = address(_10407)
            require ext_code.size(address(stor103.field_0))
            staticcall address(stor103.field_0).adapterIsRegistered(address arg1) with:
                    gas gas_remaining wei
                   args address(_10407)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15527] == bool(mem[_15527])
            if not mem[_15527]:
                revert with 0, 'Invalid after adapter verification!'
            _15654 = mem[64]
            mem[mem[64] + 36] = 32
            mem[mem[64] + 68] = _12959
            s = 0
            while s < _12959:
                mem[s + mem[64] + 100] = mem[s + _12983 + 32]
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_12959) <= _12959:
                _17942 = mem[64]
                mem[mem[64]] = ceil32(_12959) + _15654 + -mem[64] + 68
                mem[64] = ceil32(_12959) + _15654 + 100
                _17974 = mem[_10423]
                s = 0
                while s < _17974:
                    mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _10423 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17974) <= _17974:
                    mem[_17942 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15654 + 100 len _17974])) or mem[_17942 + 36 len 28]
                    _20468 = mem[_17942]
                    s = 0
                    while s < _20468:
                        mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _17942 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20468) > _20468:
                        mem[_20468 + ceil32(_12959) + _15654 + 100] = 0
                    delegate address(_10407).mem[ceil32(_12959) + _15654 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_12959) + _15654 + 104 len _20468 - 4]
                else:
                    mem[_17974 + ceil32(_12959) + _15654 + 100] = 0
                    mem[_17942 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15654 + 100 len _17974])) or mem[_17942 + 36 len 28]
                    _20469 = mem[_17942]
                    s = 0
                    while s < _20469:
                        mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _17942 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20469) > _20469:
                        mem[_20469 + ceil32(_12959) + _15654 + 100] = 0
                    delegate address(_10407).mem[ceil32(_12959) + _15654 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_12959) + _15654 + 104 len _20469 - 4]
            else:
                mem[_12959 + _15654 + 100] = 0
                _17943 = mem[64]
                mem[mem[64]] = ceil32(_12959) + _15654 + -mem[64] + 68
                mem[64] = ceil32(_12959) + _15654 + 100
                _17975 = mem[_10423]
                s = 0
                while s < _17975:
                    mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _10423 + 32]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 32
                    continue 
                if ceil32(_17975) <= _17975:
                    mem[_17943 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15654 + 100 len _17975])) or mem[_17943 + 36 len 28]
                    _20470 = mem[_17943]
                    s = 0
                    while s < _20470:
                        mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _17943 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20470) > _20470:
                        mem[_20470 + ceil32(_12959) + _15654 + 100] = 0
                    delegate address(_10407).mem[ceil32(_12959) + _15654 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_12959) + _15654 + 104 len _20470 - 4]
                else:
                    mem[_17975 + ceil32(_12959) + _15654 + 100] = 0
                    mem[_17943 + 32] = Mask(32, 224, sha3(mem[ceil32(_12959) + _15654 + 100 len _17975])) or mem[_17943 + 36 len 28]
                    _20471 = mem[_17943]
                    s = 0
                    while s < _20471:
                        mem[s + ceil32(_12959) + _15654 + 100] = mem[s + _17943 + 32]
                        _10347 = mem[(32 * ('cd', 4).length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_20471) > _20471:
                        mem[_20471 + ceil32(_12959) + _15654 + 100] = 0
                    delegate address(_10407).mem[ceil32(_12959) + _15654 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(_12959) + _15654 + 104 len _20471 - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx == -1:
                        revert with 0, 17
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 1
                    continue 
                mem[ceil32(_12959) + _15654 + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(_12959) + _15654 + 104] = 32
                mem[ceil32(_12959) + _15654 + 136] = mem[96]
                idx = 0
                while idx < mem[96]:
                    mem[idx + ceil32(_12959) + _15654 + 168] = mem[idx + 128]
                    _10347 = mem[(32 * ('cd', 4).length) + 128]
                    idx = idx + 32
                    continue 
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + ceil32(_12959) + _15654 + 168] = 0
                revert with 0, 32, mem[96], mem[ceil32(_12959) + _15654 + 168 len ceil32(mem[96])]
            mem[64] = ceil32(_12959) + _15654 + ceil32(return_data.size) + 101
            mem[ceil32(_12959) + _15654 + 100] = return_data.size
            mem[ceil32(_12959) + _15654 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx == -1:
                    revert with 0, 17
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                idx = idx + 1
                continue 
            mem[ceil32(_12959) + _15654 + ceil32(return_data.size) + 101] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(_12959) + _15654 + ceil32(return_data.size) + 105] = 32
            mem[ceil32(_12959) + _15654 + ceil32(return_data.size) + 137] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + ceil32(_12959) + _15654 + ceil32(return_data.size) + 169] = mem[idx + ceil32(_12959) + _15654 + 132]
                _10347 = mem[(32 * ('cd', 4).length) + 128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[return_data.size + ceil32(_12959) + _15654 + ceil32(return_data.size) + 169] = 0
            revert with 0, 32, return_data.size, mem[ceil32(_12959) + _15654 + ceil32(return_data.size) + 169 len ceil32(return_data.size)]
}



}
