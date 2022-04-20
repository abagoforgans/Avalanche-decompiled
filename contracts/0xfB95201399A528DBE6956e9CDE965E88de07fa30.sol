contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;

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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_1c58db4f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7345786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrapWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7345786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
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
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit LogWithdraw(arg2, arg3, arg1);
}

function sub_27dd0186(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7345786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(address(arg2))
    call address(arg2).0x9a99b4f0 with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(arg4):
        require ext_code.size(address(arg2))
        call address(arg2).0x47e7ef24 with:
             gas gas_remaining wei
            args address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb238e86b: address(arg3), arg1, arg1, address(arg4), arg5, address(arg2)
    else:
        require ext_code.size(address(arg3))
        call address(arg3).0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg5 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(arg2))
        call address(arg2).0x47e7ef24 with:
             gas gas_remaining wei
            args address(arg3), arg1 - arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb238e86b: address(arg3), arg1, arg1 - arg5, address(arg4), arg5, address(arg2)
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
            mem[s + _82] = mem[_81 + s + 32]
            _75 = mem[96]
            s = s + 32
            continue 
        if ceil32(_83) <= _83:
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _83 + _82 + -mem[64] - 4]
            if return_data.size:
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_91] = return_data.size
                mem[_91 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_82 + _83] = 0
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

function sub_ab4e731d(?) {
    require calldata.size - 4 >= 224
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
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    if owner == msg.sender:
        mem[(32 * ('cd', 4).length) + 132] = address(cd[132])
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).0x9a99b4f0 with:
             gas gas_remaining wei
            args address(cd[132]), cd[36]
        mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < ('cd', 4).length
        _265 = mem[128]
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = address(cd[100])
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 164] = this.address
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 196] = cd[36]
        require ext_code.size(address(_265))
        call address(_265).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[100]), address(this.address), cd[36]
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 132] = cd[36]
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 164] = 64
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 196] = ('cd', 4).length
        idx = 0
        s = 128
        t = (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 228
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 4).length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _510 = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159
        _512 = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
        require mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
        require (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307()
        mem[64] = (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
        mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 128] = _512
        require return_data.size >= _510 + (32 * _512) + 32
        mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160 len 32 * _512] = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + _510 + 160 len 32 * _512]
        require _512 - 1 < _512
        _734 = mem[(32 * _512 - 1) + (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160]
        require mem[(32 * _512 - 1) + (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160] >= cd[68]
        require 0 < ('cd', 4).length
        _738 = mem[128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = stor2
        require ext_code.size(address(_738))
        staticcall address(_738).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), stor2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _744 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_744] >= cd[36]:
            _748 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = _734
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 4).length
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_748 + 100] = this.address
            mem[_748 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _748 + (32 * ('cd', 4).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _948 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _952 = mem[_948]
            require mem[_948] <= test266151307()
            require _948 + return_data.size > _948 + mem[_948] + 31
            _956 = mem[_948 + mem[_948]]
            require mem[_948 + mem[_948]] <= test266151307()
            require (32 * mem[_948 + mem[_948]]) + 32 >= 0 and _948 + ceil32(return_data.size) + (32 * mem[_948 + mem[_948]]) + 32 <= test266151307()
            mem[64] = _948 + ceil32(return_data.size) + (32 * mem[_948 + mem[_948]]) + 32
            mem[_948 + ceil32(return_data.size)] = _956
            require return_data.size >= _952 + (32 * _956) + 32
            mem[_948 + ceil32(return_data.size) + 32 len 32 * _956] = mem[_948 + _952 + 32 len 32 * _956]
            require mem[96] - 1 < mem[96]
            if not address(cd[164]):
                _1136 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _734
                require ext_code.size(address(_1136))
                call address(_1136).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _734
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1160] == bool(mem[_1160])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _734
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _734
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _734, address(cd[164]), cd[196], address(cd[100])
            else:
                _1138 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[164])
                mem[mem[64] + 36] = cd[196]
                require ext_code.size(address(_1138))
                call address(_1138).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[164]), cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1161] == bool(mem[_1161])
                if cd[196] > _734:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[96] - 1 < mem[96]
                _1210 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _734 - cd[196]
                require ext_code.size(address(_1210))
                call address(_1210).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _734 - cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1232] == bool(mem[_1232])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _734 - cd[196]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _734 - cd[196]
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _734 - cd[196], address(cd[164]), cd[196], address(cd[100])
        else:
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_738))
            call address(_738).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor2, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_757] == bool(mem[_757])
            _767 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = _734
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 4).length
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_767 + 100] = this.address
            mem[_767 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _767 + (32 * ('cd', 4).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _949 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _953 = mem[_949]
            require mem[_949] <= test266151307()
            require _949 + return_data.size > _949 + mem[_949] + 31
            _957 = mem[_949 + mem[_949]]
            require mem[_949 + mem[_949]] <= test266151307()
            require (32 * mem[_949 + mem[_949]]) + 32 >= 0 and _949 + ceil32(return_data.size) + (32 * mem[_949 + mem[_949]]) + 32 <= test266151307()
            mem[64] = _949 + ceil32(return_data.size) + (32 * mem[_949 + mem[_949]]) + 32
            mem[_949 + ceil32(return_data.size)] = _957
            require return_data.size >= _953 + (32 * _957) + 32
            mem[_949 + ceil32(return_data.size) + 32 len 32 * _957] = mem[_949 + _953 + 32 len 32 * _957]
            require mem[96] - 1 < mem[96]
            if not address(cd[164]):
                _1140 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _734
                require ext_code.size(address(_1140))
                call address(_1140).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _734
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1162] == bool(mem[_1162])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _734
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _734
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _734, address(cd[164]), cd[196], address(cd[100])
            else:
                _1142 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[164])
                mem[mem[64] + 36] = cd[196]
                require ext_code.size(address(_1142))
                call address(_1142).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[164]), cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1163] == bool(mem[_1163])
                if cd[196] > _734:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[96] - 1 < mem[96]
                _1214 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _734 - cd[196]
                require ext_code.size(address(_1214))
                call address(_1214).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _734 - cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1233] == bool(mem[_1233])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _734 - cd[196]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _734 - cd[196]
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _734 - cd[196], address(cd[164]), cd[196], address(cd[100])
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[msg.sender]:
            revert with 0, 
                        32,
                        38,
                        0x7345786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[(32 * ('cd', 4).length) + 234 len 26]
        mem[(32 * ('cd', 4).length) + 132] = address(cd[132])
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).0x9a99b4f0 with:
             gas gas_remaining wei
            args address(cd[132]), cd[36]
        mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < ('cd', 4).length
        _268 = mem[128]
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = address(cd[100])
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 164] = this.address
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 196] = cd[36]
        require ext_code.size(address(_268))
        call address(_268).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[100]), address(this.address), cd[36]
        mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 132] = cd[36]
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 164] = 64
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 196] = ('cd', 4).length
        idx = 0
        s = 128
        t = (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 228
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 4).length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _511 = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + return_data.size + 128 > (32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159
        _513 = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
        require mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
        require (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307()
        mem[64] = (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
        mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 128] = _513
        require return_data.size >= _511 + (32 * _513) + 32
        mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160 len 32 * _513] = mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + _511 + 160 len 32 * _513]
        require _513 - 1 < _513
        _735 = mem[(32 * _513 - 1) + (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160]
        require mem[(32 * _513 - 1) + (32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 160] >= cd[68]
        require 0 < ('cd', 4).length
        _739 = mem[128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = stor2
        require ext_code.size(address(_739))
        staticcall address(_739).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), stor2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _745 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_745] >= cd[36]:
            _750 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = _735
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 4).length
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_750 + 100] = this.address
            mem[_750 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _750 + (32 * ('cd', 4).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _950 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _954 = mem[_950]
            require mem[_950] <= test266151307()
            require _950 + return_data.size > _950 + mem[_950] + 31
            _958 = mem[_950 + mem[_950]]
            require mem[_950 + mem[_950]] <= test266151307()
            require (32 * mem[_950 + mem[_950]]) + 32 >= 0 and _950 + ceil32(return_data.size) + (32 * mem[_950 + mem[_950]]) + 32 <= test266151307()
            mem[64] = _950 + ceil32(return_data.size) + (32 * mem[_950 + mem[_950]]) + 32
            mem[_950 + ceil32(return_data.size)] = _958
            require return_data.size >= _954 + (32 * _958) + 32
            mem[_950 + ceil32(return_data.size) + 32 len 32 * _958] = mem[_950 + _954 + 32 len 32 * _958]
            require mem[96] - 1 < mem[96]
            if not address(cd[164]):
                _1144 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _735
                require ext_code.size(address(_1144))
                call address(_1144).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _735
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1164 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1164] == bool(mem[_1164])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _735
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _735
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _735, address(cd[164]), cd[196], address(cd[100])
            else:
                _1146 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[164])
                mem[mem[64] + 36] = cd[196]
                require ext_code.size(address(_1146))
                call address(_1146).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[164]), cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1165] == bool(mem[_1165])
                if cd[196] > _735:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[96] - 1 < mem[96]
                _1218 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _735 - cd[196]
                require ext_code.size(address(_1218))
                call address(_1218).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _735 - cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1234] == bool(mem[_1234])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _735 - cd[196]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _735 - cd[196]
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _735 - cd[196], address(cd[164]), cd[196], address(cd[100])
        else:
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_739))
            call address(_739).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor2, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _759 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_759] == bool(mem[_759])
            _769 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = _735
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 4).length
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_769 + 100] = this.address
            mem[_769 + 132] = block.timestamp + 300
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _769 + (32 * ('cd', 4).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _951 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _955 = mem[_951]
            require mem[_951] <= test266151307()
            require _951 + return_data.size > _951 + mem[_951] + 31
            _959 = mem[_951 + mem[_951]]
            require mem[_951 + mem[_951]] <= test266151307()
            require (32 * mem[_951 + mem[_951]]) + 32 >= 0 and _951 + ceil32(return_data.size) + (32 * mem[_951 + mem[_951]]) + 32 <= test266151307()
            mem[64] = _951 + ceil32(return_data.size) + (32 * mem[_951 + mem[_951]]) + 32
            mem[_951 + ceil32(return_data.size)] = _959
            require return_data.size >= _955 + (32 * _959) + 32
            mem[_951 + ceil32(return_data.size) + 32 len 32 * _959] = mem[_951 + _955 + 32 len 32 * _959]
            require mem[96] - 1 < mem[96]
            if not address(cd[164]):
                _1148 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _735
                require ext_code.size(address(_1148))
                call address(_1148).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _735
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1166] == bool(mem[_1166])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _735
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _735
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _735, address(cd[164]), cd[196], address(cd[100])
            else:
                _1150 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[164])
                mem[mem[64] + 36] = cd[196]
                require ext_code.size(address(_1150))
                call address(_1150).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[164]), cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1167] == bool(mem[_1167])
                if cd[196] > _735:
                    revert with 0, 'SafeMath: subtraction overflow'
                require mem[96] - 1 < mem[96]
                _1222 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = _735 - cd[196]
                require ext_code.size(address(_1222))
                call address(_1222).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[100]), _735 - cd[196]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1235] == bool(mem[_1235])
                mem[mem[64]] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[132])
                require ext_code.size(address(cd[100]))
                call address(cd[100]).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(cd[132]), _735 - cd[196]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require mem[96] - 1 < mem[96]
                mem[mem[64]] = mem[(32 * mem[96] - 1) + 140 len 20]
                mem[mem[64] + 64] = _735 - cd[196]
                mem[mem[64] + 96] = address(cd[164])
                emit 0xb238e86b: mem[mem[64]], cd[36], _735 - cd[196], address(cd[164]), cd[196], address(cd[100])
}



}
