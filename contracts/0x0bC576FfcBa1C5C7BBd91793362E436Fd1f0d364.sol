contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6ad6258(?)
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
    call address(arg1).approve(address rg1, uint256 rg2) with:
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
    call arg1.approve(address rg1, uint256 rg2) with:
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

function sub_c2e44c7b(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    mem[128] = stor2
    mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
    mem[164] = 1
    idx = 0
    s = 128
    t = 292
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    call stor4.claimReward(uint8 rg1, address rg2, address[] rg3) with:
         gas gas_remaining wei
        args 1, address(arg2), Array(len=1, data=mem[292])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).0x6fbd99a0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8bee6a32: 0, arg1, arg1, 0, 0, 1, address(arg2)
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
    call stor4.claimReward(uint8 rg1, address rg2, address[] rg3) with:
         gas gas_remaining wei
        args cd[4] << 248, address(cd[132]), Array(len=1, data=mem[(32 * ('cd', 36).length) + 324])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(cd[4]) != 1:
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5580 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5596 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = _5596
                require return_data.size >= _5580 + (32 * _5596) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5596] = mem[(32 * ('cd', 36).length) + _5580 + 420 len 32 * _5596]
                require _5596 - 1 < _5596
                _6796 = mem[(32 * _5596 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5596 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6828 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6828))
                staticcall address(_6828).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6876] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6796
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6796, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7936 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7936] <= test266151307()
                    require _7936 + return_data.size > _7936 + mem[_7936] + 31
                    require mem[_7936 + mem[_7936]] <= test266151307()
                    require (32 * mem[_7936 + mem[_7936]]) + 32 >= 0 and _7936 + ceil32(return_data.size) + (32 * mem[_7936 + mem[_7936]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7936] + (32 * mem[_7936 + mem[_7936]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6828))
                    call address(_6828).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6977 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6977] == bool(mem[_6977])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6796
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6796, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7937 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7937] <= test266151307()
                    require _7937 + return_data.size > _7937 + mem[_7937] + 31
                    require mem[_7937 + mem[_7937]] <= test266151307()
                    require (32 * mem[_7937 + mem[_7937]]) + 32 >= 0 and _7937 + ceil32(return_data.size) + (32 * mem[_7937 + mem[_7937]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7937] + (32 * mem[_7937 + mem[_7937]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6796
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6796 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6796
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6796, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6796:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6796 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6796 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6796 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5581 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5597 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = _5597
                require return_data.size >= _5581 + (32 * _5597) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5597] = mem[(32 * ('cd', 36).length) + _5581 + 420 len 32 * _5597]
                require _5597 - 1 < _5597
                _6797 = mem[(32 * _5597 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5597 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6829 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6829))
                staticcall address(_6829).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6877] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6797
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6797, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7938 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7938] <= test266151307()
                    require _7938 + return_data.size > _7938 + mem[_7938] + 31
                    require mem[_7938 + mem[_7938]] <= test266151307()
                    require (32 * mem[_7938 + mem[_7938]]) + 32 >= 0 and _7938 + ceil32(return_data.size) + (32 * mem[_7938 + mem[_7938]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7938] + (32 * mem[_7938 + mem[_7938]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6829))
                    call address(_6829).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6979] == bool(mem[_6979])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6797
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6797, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7939 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7939] <= test266151307()
                    require _7939 + return_data.size > _7939 + mem[_7939] + 31
                    require mem[_7939 + mem[_7939]] <= test266151307()
                    require (32 * mem[_7939 + mem[_7939]]) + 32 >= 0 and _7939 + ceil32(return_data.size) + (32 * mem[_7939 + mem[_7939]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7939] + (32 * mem[_7939 + mem[_7939]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6797
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6797 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6797
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6797, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6797:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6797 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6797 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6797 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5582 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5598 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require return_data.size >= _5582 + (32 * _5598) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5598] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5582 + 421 len 32 * _5598]
                require _5598 - 1 < _5598
                _6798 = mem[(32 * _5598 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5598 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6830 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6830))
                staticcall address(_6830).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6878] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6798
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6798, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7940 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7940] <= test266151307()
                    require _7940 + return_data.size > _7940 + mem[_7940] + 31
                    require mem[_7940 + mem[_7940]] <= test266151307()
                    require (32 * mem[_7940 + mem[_7940]]) + 32 >= 0 and _7940 + ceil32(return_data.size) + (32 * mem[_7940 + mem[_7940]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7940] + (32 * mem[_7940 + mem[_7940]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6830))
                    call address(_6830).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6981] == bool(mem[_6981])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6798
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6798, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7941 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7941] <= test266151307()
                    require _7941 + return_data.size > _7941 + mem[_7941] + 31
                    require mem[_7941 + mem[_7941]] <= test266151307()
                    require (32 * mem[_7941 + mem[_7941]]) + 32 >= 0 and _7941 + ceil32(return_data.size) + (32 * mem[_7941 + mem[_7941]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7941] + (32 * mem[_7941 + mem[_7941]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6798
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6798 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6798
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6798, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6798:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6798 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6798 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6798 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5583 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5599 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require return_data.size >= _5583 + (32 * _5599) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5599] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5583 + 421 len 32 * _5599]
                require _5599 - 1 < _5599
                _6799 = mem[(32 * _5599 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5599 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6831 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6831))
                staticcall address(_6831).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6879 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6879] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6799
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6799, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7942 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7942] <= test266151307()
                    require _7942 + return_data.size > _7942 + mem[_7942] + 31
                    require mem[_7942 + mem[_7942]] <= test266151307()
                    require (32 * mem[_7942 + mem[_7942]]) + 32 >= 0 and _7942 + ceil32(return_data.size) + (32 * mem[_7942 + mem[_7942]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7942] + (32 * mem[_7942 + mem[_7942]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6831))
                    call address(_6831).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6983] == bool(mem[_6983])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6799
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6799, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7943 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7943] <= test266151307()
                    require _7943 + return_data.size > _7943 + mem[_7943] + 31
                    require mem[_7943 + mem[_7943]] <= test266151307()
                    require (32 * mem[_7943 + mem[_7943]]) + 32 >= 0 and _7943 + ceil32(return_data.size) + (32 * mem[_7943 + mem[_7943]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7943] + (32 * mem[_7943 + mem[_7943]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6799
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6799 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6799
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6799, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6799:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6799 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6799 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6799 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
    else:
        require ext_code.size(address(cd[132]))
        call address(cd[132]).0x1c58db4f with:
             gas gas_remaining wei
            args cd[68]
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5588 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5604 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = _5604
                require return_data.size >= _5588 + (32 * _5604) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5604] = mem[(32 * ('cd', 36).length) + _5588 + 420 len 32 * _5604]
                require _5604 - 1 < _5604
                _6804 = mem[(32 * _5604 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5604 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6836 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6836))
                staticcall address(_6836).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6884 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6884] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6804
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6804, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7952 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7952] <= test266151307()
                    require _7952 + return_data.size > _7952 + mem[_7952] + 31
                    require mem[_7952 + mem[_7952]] <= test266151307()
                    require (32 * mem[_7952 + mem[_7952]]) + 32 >= 0 and _7952 + ceil32(return_data.size) + (32 * mem[_7952 + mem[_7952]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7952] + (32 * mem[_7952 + mem[_7952]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6836))
                    call address(_6836).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6993] == bool(mem[_6993])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6804
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6804, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7953 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7953] <= test266151307()
                    require _7953 + return_data.size > _7953 + mem[_7953] + 31
                    require mem[_7953 + mem[_7953]] <= test266151307()
                    require (32 * mem[_7953 + mem[_7953]]) + 32 >= 0 and _7953 + ceil32(return_data.size) + (32 * mem[_7953 + mem[_7953]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7953] + (32 * mem[_7953 + mem[_7953]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6804
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6804 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6804
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6804, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6804:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6804 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6804 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6804 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args mem[(32 * ('cd', 36).length) + 392 len (96 * ('cd', 36).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 388
                require return_data.size >= 32
                _5589 = mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + return_data.size + 388 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 419
                _5605 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]
                require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 388 len 4], Mask(224, 32, cd[68]) >> 32 + 388]) + 420
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 388] = _5605
                require return_data.size >= _5589 + (32 * _5605) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 420 len 32 * _5605] = mem[(32 * ('cd', 36).length) + _5589 + 420 len 32 * _5605]
                require _5605 - 1 < _5605
                _6805 = mem[(32 * _5605 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420]
                require mem[(32 * _5605 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 420] >= cd[100]
                require 0 < ('cd', 36).length
                _6837 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6837))
                staticcall address(_6837).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6885] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6805
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6805, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7954 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7954] <= test266151307()
                    require _7954 + return_data.size > _7954 + mem[_7954] + 31
                    require mem[_7954 + mem[_7954]] <= test266151307()
                    require (32 * mem[_7954 + mem[_7954]]) + 32 >= 0 and _7954 + ceil32(return_data.size) + (32 * mem[_7954 + mem[_7954]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7954] + (32 * mem[_7954 + mem[_7954]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6837))
                    call address(_6837).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6995 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6995] == bool(mem[_6995])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6805
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6805, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7955 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7955] <= test266151307()
                    require _7955 + return_data.size > _7955 + mem[_7955] + 31
                    require mem[_7955 + mem[_7955]] <= test266151307()
                    require (32 * mem[_7955 + mem[_7955]]) + 32 >= 0 and _7955 + ceil32(return_data.size) + (32 * mem[_7955 + mem[_7955]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7955] + (32 * mem[_7955 + mem[_7955]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6805
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6805 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6805
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6805, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6805:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6805 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6805 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6805 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5590 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5606 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require return_data.size >= _5590 + (32 * _5606) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5606] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5590 + 421 len 32 * _5606]
                require _5606 - 1 < _5606
                _6806 = mem[(32 * _5606 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5606 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6838 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6838))
                staticcall address(_6838).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6886 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6886] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6806
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6806, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7956 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7956] <= test266151307()
                    require _7956 + return_data.size > _7956 + mem[_7956] + 31
                    require mem[_7956 + mem[_7956]] <= test266151307()
                    require (32 * mem[_7956 + mem[_7956]]) + 32 >= 0 and _7956 + ceil32(return_data.size) + (32 * mem[_7956 + mem[_7956]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7956] + (32 * mem[_7956 + mem[_7956]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6838))
                    call address(_6838).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6997] == bool(mem[_6997])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6806
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6806, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7957 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7957] <= test266151307()
                    require _7957 + return_data.size > _7957 + mem[_7957] + 31
                    require mem[_7957 + mem[_7957]] <= test266151307()
                    require (32 * mem[_7957 + mem[_7957]]) + 32 >= 0 and _7957 + ceil32(return_data.size) + (32 * mem[_7957 + mem[_7957]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7957] + (32 * mem[_7957 + mem[_7957]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6806
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6806 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6806
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6806, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6806:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6806 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6806 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6806 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
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
                call stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 36).length, data=mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 489 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _5591 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 389 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 420
                _5607 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389] <= test266151307()
                require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421 <= test266151307()
                mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]) + 421
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, cd[68]) >> 32 + 389]
                require return_data.size >= _5591 + (32 * _5607) + 32
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 32 * _5607] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + _5591 + 421 len 32 * _5607]
                require _5607 - 1 < _5607
                _6807 = mem[(32 * _5607 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421]
                require mem[(32 * _5607 - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 421] >= cd[100]
                require 0 < ('cd', 36).length
                _6839 = mem[128]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(_6839))
                staticcall address(_6839).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_6887] >= cd[68]:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6807
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6807, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7958 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7958] <= test266151307()
                    require _7958 + return_data.size > _7958 + mem[_7958] + 31
                    require mem[_7958 + mem[_7958]] <= test266151307()
                    require (32 * mem[_7958 + mem[_7958]]) + 32 >= 0 and _7958 + ceil32(return_data.size) + (32 * mem[_7958 + mem[_7958]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7958] + (32 * mem[_7958 + mem[_7958]]) + 32
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_6839))
                    call address(_6839).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6999 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6999] == bool(mem[_6999])
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = _6807
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
                    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args cd[68], _6807, Array(len=('cd', 36).length, data=mem[mem[64] + 196 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7959 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7959] <= test266151307()
                    require _7959 + return_data.size > _7959 + mem[_7959] + 31
                    require mem[_7959 + mem[_7959]] <= test266151307()
                    require (32 * mem[_7959 + mem[_7959]]) + 32 >= 0 and _7959 + ceil32(return_data.size) + (32 * mem[_7959 + mem[_7959]]) + 32 <= test266151307()
                    require return_data.size >= mem[_7959] + (32 * mem[_7959 + mem[_7959]]) + 32
                require ext_code.size(stor3)
                call stor3.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _6807
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(cd[164]):
                    call address(cd[132]) with:
                       value _6807 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args _6807
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6807, address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
                else:
                    call address(cd[164]) with:
                       value cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[196] > _6807:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    call address(cd[132]) with:
                       value _6807 - cd[196] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).0x6fbd99a0 with:
                         gas gas_remaining wei
                        args (_6807 - cd[196])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8bee6a32: 0, cd[68], _6807 - cd[196], address(cd[164]), cd[196], uint8(cd[4]), address(cd[132])
}



}
