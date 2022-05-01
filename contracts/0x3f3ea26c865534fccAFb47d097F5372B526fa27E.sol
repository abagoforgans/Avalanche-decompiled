contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6ad6258(?)
#  - sub_d131edd4(?)
#
address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function owner() {
    return owner
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
}

function addExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(1, arg1);
    stor1[address(arg1)] = 1
}

function removeExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(0, arg1);
    stor1[address(arg1)] = 0
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

function sub_d2a69501(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor3)
    call stor3.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c58db4f(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor3)
    call stor3.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3419ba23(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(arg3.length) + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
    emit LogWithdraw(arg2, msg.sender, arg1);
}

function withdrawTo(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        mem[ceil32(return_data.size) + 132] = arg3
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
    emit LogWithdraw(arg2, arg3, arg1);
}

function sub_077d97d7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
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
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _58 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_58] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_58 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_58 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _58
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _75 = mem[96]
    idx = 0
    while idx < _75:
        require idx < mem[96]
        _77 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _79 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _81 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        _82 = mem[64]
        _83 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        s = 0
        while s < _83:
            mem[s + _82] = mem[s + _81 + 32]
            _75 = mem[96]
            s = s + 32
            continue 
        if ceil32(_83) <= _83:
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _83 + _82 + -mem[64] - 4]
            if return_data.size:
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_92] = return_data.size
                mem[_92 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_83 + _82] = 0
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _83 + _82 + -mem[64] - 4]
            if return_data.size:
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_93] = return_data.size
                mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _75 = mem[96]
        idx = idx + 1
        continue 
}

function sub_ee2a8fda(?) {
    require calldata.size - 4 >= 224
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Executable: caller is not the executor'
    mem[(32 * ('cd', 36).length) + 128] = 1
    mem[(32 * ('cd', 36).length) + 160] = stor2
    mem[(32 * ('cd', 36).length) + 192] = 0x744532ae00000000000000000000000000000000000000000000000000000000
    if uint8(cd[4]) != 1:
        mem[(32 * ('cd', 36).length) + 196] = uint8(cd[4])
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = (32 * ('cd', 36).length) + 324
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args cd[4] << 248, address(cd[132]), Array(len=1, data=mem[(32 * ('cd', 36).length) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 228] = address(cd[132])
        mem[(32 * ('cd', 36).length) + 260] = this.address
        mem[(32 * ('cd', 36).length) + 292] = cd[68]
        mem[(32 * ('cd', 36).length) + 192] = 100
        mem[(32 * ('cd', 36).length) + 224 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * ('cd', 36).length) + 324] = 32
        mem[(32 * ('cd', 36).length) + 356] = 'SafeERC20: low-level call failed'
        if not ext_code.size(mem[140 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * ('cd', 36).length) + 388 len 128] = 0, address(cd[132]), address(this.address), cd[68], 0
        mem[(32 * ('cd', 36).length) + 488] = 0
        call mem[140 len 20] with:
             gas gas_remaining wei
            args (Mask(768, -544, 0, address(cd[132]), address(this.address), cd[68], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                mem[(32 * ('cd', 36).length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + 392] = cd[68]
                mem[(32 * ('cd', 36).length) + 424] = 64
                mem[(32 * ('cd', 36).length) + 456] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + 488
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5611 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5627 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require return_data.size >= _5611 + (32 * _5627) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5627] = mem[(32 * ('cd', 36).length) + _5611 + 420 len 32 * _5627]
                var97001 = (32 * ('cd', 36).length) + _5611 + (32 * _5627) + 420
                require _5627 - 1 < _5627
                _6827 = mem[(32 * _5627 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5627 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6859 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6859))
                staticcall address(_6859).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6907 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6907] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6827
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7967 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7967] <= test266151307()
                    require _7967 + return_data.size > _7967 + mem[_7967] + 31
                    require mem[_7967 + mem[_7967]] <= test266151307()
                    require (32 * mem[_7967 + mem[_7967]]) + 32 >= 0 and _7967 + ceil32(return_data.size) + (32 * mem[_7967 + mem[_7967]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7967] + (32 * mem[_7967 + mem[_7967]]) + 32
                    var135001 = _7967 + mem[_7967] + (32 * mem[_7967 + mem[_7967]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6859))
                    call address(_6859).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7008 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7008] == bool(mem[_7008])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6827
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7968 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7968] <= test266151307()
                    require _7968 + return_data.size > _7968 + mem[_7968] + 31
                    require mem[_7968 + mem[_7968]] <= test266151307()
                    require (32 * mem[_7968 + mem[_7968]]) + 32 >= 0 and _7968 + ceil32(return_data.size) + (32 * mem[_7968 + mem[_7968]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7968] + (32 * mem[_7968 + mem[_7968]]) + 32
                    var145001 = _7968 + mem[_7968] + (32 * mem[_7968 + mem[_7968]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6827
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6827 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6827
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6827, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6827:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6827 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6827 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6827 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
            else:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(32 * ('cd', 36).length) + 388] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + 392] = cd[68]
                mem[(32 * ('cd', 36).length) + 424] = 64
                mem[(32 * ('cd', 36).length) + 456] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + 488
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5612 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5628 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require return_data.size >= _5612 + (32 * _5628) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5628] = mem[(32 * ('cd', 36).length) + _5612 + 420 len 32 * _5628]
                require _5628 - 1 < _5628
                _6828 = mem[(32 * _5628 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5628 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6860 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6860))
                staticcall address(_6860).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6908 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6908] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6828
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7969 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7969] <= test266151307()
                    require _7969 + return_data.size > _7969 + mem[_7969] + 31
                    require mem[_7969 + mem[_7969]] <= test266151307()
                    require (32 * mem[_7969 + mem[_7969]]) + 32 >= 0 and _7969 + ceil32(return_data.size) + (32 * mem[_7969 + mem[_7969]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7969] + (32 * mem[_7969 + mem[_7969]]) + 32
                    var140001 = _7969 + mem[_7969] + (32 * mem[_7969 + mem[_7969]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6860))
                    call address(_6860).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7010] == bool(mem[_7010])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6828
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7970 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7970] <= test266151307()
                    require _7970 + return_data.size > _7970 + mem[_7970] + 31
                    require mem[_7970 + mem[_7970]] <= test266151307()
                    require (32 * mem[_7970 + mem[_7970]]) + 32 >= 0 and _7970 + ceil32(return_data.size) + (32 * mem[_7970 + mem[_7970]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7970] + (32 * mem[_7970 + mem[_7970]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6828
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6828 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6828
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6828, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6828:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6828 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6828 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6828 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
        else:
            mem[(32 * ('cd', 36).length) + 388] = return_data.size
            mem[(32 * ('cd', 36).length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 393] = cd[68]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 425] = 64
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 457] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 489
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5613 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5629 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = _5629
                require return_data.size >= _5613 + (32 * _5629) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5629] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5613 + 421 len 32 * _5629]
                var97001 = (32 * ('cd', 36).length) + ceil32(return_data.size) + _5613 + (32 * _5629) + 421
                require _5629 - 1 < _5629
                _6829 = mem[(32 * _5629 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5629 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6861 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6861))
                staticcall address(_6861).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6909 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6909] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6829
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7971 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7971] <= test266151307()
                    require _7971 + return_data.size > _7971 + mem[_7971] + 31
                    require mem[_7971 + mem[_7971]] <= test266151307()
                    require (32 * mem[_7971 + mem[_7971]]) + 32 >= 0 and _7971 + ceil32(return_data.size) + (32 * mem[_7971 + mem[_7971]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7971] + (32 * mem[_7971 + mem[_7971]]) + 32
                    var135001 = _7971 + mem[_7971] + (32 * mem[_7971 + mem[_7971]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6861))
                    call address(_6861).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7012] == bool(mem[_7012])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6829
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _6829, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7972 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7972] <= test266151307()
                    require _7972 + return_data.size > _7972 + mem[_7972] + 31
                    require mem[_7972 + mem[_7972]] <= test266151307()
                    require (32 * mem[_7972 + mem[_7972]]) + 32 >= 0 and _7972 + ceil32(return_data.size) + (32 * mem[_7972 + mem[_7972]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7972] + (32 * mem[_7972 + mem[_7972]]) + 32
                    var145001 = _7972 + mem[_7972] + (32 * mem[_7972 + mem[_7972]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6829
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6829 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6829
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6829, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6829:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6829 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6829 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6829 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
            else:
                require return_data.size >= 32
                require mem[(32 * ('cd', 36).length) + 420] == bool(mem[(32 * ('cd', 36).length) + 420])
                if not mem[(32 * ('cd', 36).length) + 420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 393] = cd[68]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 425] = 64
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 457] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 489
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5614 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5630 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = _5630
                require return_data.size >= _5614 + (32 * _5630) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5630] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5614 + 421 len 32 * _5630]
                require _5630 - 1 < _5630
                _6830 = mem[(32 * _5630 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5630 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6862 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6862))
                staticcall address(_6862).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6910 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6910] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6830
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7973 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7973] <= test266151307()
                    require _7973 + return_data.size > _7973 + mem[_7973] + 31
                    require mem[_7973 + mem[_7973]] <= test266151307()
                    require (32 * mem[_7973 + mem[_7973]]) + 32 >= 0 and _7973 + ceil32(return_data.size) + (32 * mem[_7973 + mem[_7973]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7973] + (32 * mem[_7973 + mem[_7973]]) + 32
                    var140001 = _7973 + mem[_7973] + (32 * mem[_7973 + mem[_7973]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6862))
                    call address(_6862).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7014] == bool(mem[_7014])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6830
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7974 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7974] <= test266151307()
                    require _7974 + return_data.size > _7974 + mem[_7974] + 31
                    require mem[_7974 + mem[_7974]] <= test266151307()
                    require (32 * mem[_7974 + mem[_7974]]) + 32 >= 0 and _7974 + ceil32(return_data.size) + (32 * mem[_7974 + mem[_7974]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7974] + (32 * mem[_7974 + mem[_7974]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6830
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6830 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6830
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6830, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6830:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6830 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6830 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6830 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
    else:
        mem[(32 * ('cd', 36).length) + 196] = 1
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = (32 * ('cd', 36).length) + 324
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 1, address(cd[132]), Array(len=1, data=mem[(32 * ('cd', 36).length) + 324])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 36).length) + 192] = 30
        mem[(32 * ('cd', 36).length) + 224] = 'SafeMath: subtraction overflow'
        if eth.balance(cd[132]) > eth.balance(cd[132]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(address(cd[132]))
        call address(cd[132]).0x1c58db4f with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 292] = address(cd[132])
        mem[(32 * ('cd', 36).length) + 324] = this.address
        mem[(32 * ('cd', 36).length) + 356] = cd[68]
        mem[(32 * ('cd', 36).length) + 256] = 100
        mem[(32 * ('cd', 36).length) + 288 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * ('cd', 36).length) + 388] = 32
        mem[(32 * ('cd', 36).length) + 420] = 'SafeERC20: low-level call failed'
        if not ext_code.size(mem[140 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * ('cd', 36).length) + 452 len 128] = 0, address(cd[132]), address(this.address), cd[68], 0
        mem[(32 * ('cd', 36).length) + 552] = 0
        call mem[140 len 20] with:
             gas gas_remaining wei
            args (Mask(768, -544, 0, address(cd[132]), address(this.address), cd[68], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                mem[(32 * ('cd', 36).length) + 452] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + 456] = cd[68]
                mem[(32 * ('cd', 36).length) + 488] = 64
                mem[(32 * ('cd', 36).length) + 520] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + 552
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 456 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 452
                require return_data.size >= 32
                _5619 = mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 452 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 483
                _5635 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 484 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 484
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 452] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]
                require return_data.size >= _5619 + (32 * _5635) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 484 len 32 * _5635] = mem[(32 * ('cd', 36).length) + _5619 + 484 len 32 * _5635]
                require _5635 - 1 < _5635
                _6835 = mem[(32 * _5635 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 484]
                require mem[(32 * _5635 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 484] >= cd[100]
                require 0 < ('cd', 36).length
                _6867 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6867))
                staticcall address(_6867).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6915 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6915] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6835
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7983 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7983] <= test266151307()
                    require _7983 + return_data.size > _7983 + mem[_7983] + 31
                    require mem[_7983 + mem[_7983]] <= test266151307()
                    require (32 * mem[_7983 + mem[_7983]]) + 32 >= 0 and _7983 + ceil32(return_data.size) + (32 * mem[_7983 + mem[_7983]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7983] + (32 * mem[_7983 + mem[_7983]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6867))
                    call address(_6867).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7024] == bool(mem[_7024])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6835
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _6835, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7984 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7984] <= test266151307()
                    require _7984 + return_data.size > _7984 + mem[_7984] + 31
                    require mem[_7984 + mem[_7984]] <= test266151307()
                    require (32 * mem[_7984 + mem[_7984]]) + 32 >= 0 and _7984 + ceil32(return_data.size) + (32 * mem[_7984 + mem[_7984]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7984] + (32 * mem[_7984 + mem[_7984]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6835
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6835 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6835
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6835, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6835:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6835 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6835 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6835 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
            else:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(32 * ('cd', 36).length) + 452] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + 456] = cd[68]
                mem[(32 * ('cd', 36).length) + 488] = 64
                mem[(32 * ('cd', 36).length) + 520] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + 552
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 456 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 452
                require return_data.size >= 32
                _5620 = mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 452 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 483
                _5636 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 484 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]) + 484
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 452] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 452 len 4], Mask(224, 32, cd[68]) >> 32 + 452]
                require return_data.size >= _5620 + (32 * _5636) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 484 len 32 * _5636] = mem[(32 * ('cd', 36).length) + _5620 + 484 len 32 * _5636]
                require _5636 - 1 < _5636
                _6836 = mem[(32 * _5636 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 484]
                require mem[(32 * _5636 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 484] >= cd[100]
                require 0 < ('cd', 36).length
                _6868 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6868))
                staticcall address(_6868).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6916] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6836
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7985 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7985] <= test266151307()
                    require _7985 + return_data.size > _7985 + mem[_7985] + 31
                    require mem[_7985 + mem[_7985]] <= test266151307()
                    require (32 * mem[_7985 + mem[_7985]]) + 32 >= 0 and _7985 + ceil32(return_data.size) + (32 * mem[_7985 + mem[_7985]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7985] + (32 * mem[_7985 + mem[_7985]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6868))
                    call address(_6868).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7026] == bool(mem[_7026])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6836
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7986 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7986] <= test266151307()
                    require _7986 + return_data.size > _7986 + mem[_7986] + 31
                    require mem[_7986 + mem[_7986]] <= test266151307()
                    require (32 * mem[_7986 + mem[_7986]]) + 32 >= 0 and _7986 + ceil32(return_data.size) + (32 * mem[_7986 + mem[_7986]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7986] + (32 * mem[_7986 + mem[_7986]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6836
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6836 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6836
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6836, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6836:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6836 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6836 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6836 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
        else:
            mem[(32 * ('cd', 36).length) + 452] = return_data.size
            mem[(32 * ('cd', 36).length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 457] = cd[68]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489] = 64
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 521] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 553
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 553 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 453
                require return_data.size >= 32
                _5621 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 453 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 484
                _5637 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 485 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 485
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = _5637
                require return_data.size >= _5621 + (32 * _5637) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 32 * _5637] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5621 + 485 len 32 * _5637]
                require _5637 - 1 < _5637
                _6837 = mem[(32 * _5637 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                require mem[(32 * _5637 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485] >= cd[100]
                require 0 < ('cd', 36).length
                _6869 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6869))
                staticcall address(_6869).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6917 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6917] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6837
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _6837, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7987 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7987] <= test266151307()
                    require _7987 + return_data.size > _7987 + mem[_7987] + 31
                    require mem[_7987 + mem[_7987]] <= test266151307()
                    require (32 * mem[_7987 + mem[_7987]]) + 32 >= 0 and _7987 + ceil32(return_data.size) + (32 * mem[_7987 + mem[_7987]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7987] + (32 * mem[_7987 + mem[_7987]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6869))
                    call address(_6869).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7028] == bool(mem[_7028])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6837
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7988 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7988] <= test266151307()
                    require _7988 + return_data.size > _7988 + mem[_7988] + 31
                    require mem[_7988 + mem[_7988]] <= test266151307()
                    require (32 * mem[_7988 + mem[_7988]]) + 32 >= 0 and _7988 + ceil32(return_data.size) + (32 * mem[_7988 + mem[_7988]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7988] + (32 * mem[_7988 + mem[_7988]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6837
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6837 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6837
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6837, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6837:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6837 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6837 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6837 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
            else:
                require return_data.size >= 32
                require mem[(32 * ('cd', 36).length) + 484] == bool(mem[(32 * ('cd', 36).length) + 484])
                if not mem[(32 * ('cd', 36).length) + 484]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 457] = cd[68]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489] = 64
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 521] = ('cd', 36).length
                idx = 0
                s = 128
                t = (32 * ('cd', 36).length) + ceil32(return_data.size) + 553
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                call stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 553 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 453
                require return_data.size >= 32
                _5622 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 453 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 484
                _5638 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 485 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[68]) >> 32 + 453]) + 485
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = _5638
                require return_data.size >= _5622 + (32 * _5638) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 32 * _5638] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5622 + 485 len 32 * _5638]
                require _5638 - 1 < _5638
                _6838 = mem[(32 * _5638 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485]
                require mem[(32 * _5638 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 485] >= cd[100]
                require 0 < ('cd', 36).length
                _6870 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6870))
                staticcall address(_6870).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6918] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6838
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7989 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7989] <= test266151307()
                    require _7989 + return_data.size > _7989 + mem[_7989] + 31
                    require mem[_7989 + mem[_7989]] <= test266151307()
                    require (32 * mem[_7989 + mem[_7989]]) + 32 >= 0 and _7989 + ceil32(return_data.size) + (32 * mem[_7989 + mem[_7989]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7989] + (32 * mem[_7989 + mem[_7989]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6870))
                    call address(_6870).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7030] == bool(mem[_7030])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6838
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 36).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 300
                    require ext_code.size(stor5)
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _6838, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7990 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7990] <= test266151307()
                    require _7990 + return_data.size > _7990 + mem[_7990] + 31
                    require mem[_7990 + mem[_7990]] <= test266151307()
                    require (32 * mem[_7990 + mem[_7990]]) + 32 >= 0 and _7990 + ceil32(return_data.size) + (32 * mem[_7990 + mem[_7990]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7990] + (32 * mem[_7990 + mem[_7990]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6838
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6838 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6838
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6838, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6838:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6838 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6838 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6838 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
}



}
