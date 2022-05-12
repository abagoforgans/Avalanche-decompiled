contract main {




// =====================  Runtime code  =====================


#
#  - sub_9183ca03(?)
#  - sub_bfdc4a26(?)
#
address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
mapping of uint256 sub_1a9a35e6;

function sub_1a9a35e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1a9a35e6[arg1]
}

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

function sub_0b9b1f9a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
}

function sub_e77f6820(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function sub_f66c5f2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_a66392d5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1a9a35e6[address(arg1)] = arg2
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

function sub_d633b9ff(?) {
    require ext_code.size(stor3)
    staticcall stor3.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], ext_call.return_data[32]
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

function sub_1c58db4f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
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
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function repay(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function sub_554994f2(?) {
    require ext_code.size(stor3)
    staticcall stor3.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[64] <= ext_call.return_data[32]:
        if ext_call.return_data[64] >= ext_call.return_data[32]:
            return 0
        if ext_call.return_data[64] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, ext_call.return_data[32] - ext_call.return_data[64]
    if ext_call.return_data[32] > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[64] >= ext_call.return_data[32]:
        return ext_call.return_data[64] - ext_call.return_data[32], 0
    if ext_call.return_data[64] > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ext_call.return_data[64] - ext_call.return_data[32], ext_call.return_data[32] - ext_call.return_data[64]
}

function sub_441211d2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
        if owner != msg.sender:
            if not stor1[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                            mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, -1, arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
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
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
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

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRewards(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[76 len 20]
    mem[ceil32(return_data.size) + 192] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 96
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args Array(len=2, data=mem[ceil32(return_data.size) + 324 len 64]), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f598388c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ac0e5b5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[32]):
        if not address(ext_call.return_data[64]):
            return ext_call.return_data[0], 0
        require ext_code.size(address(ext_call.return_data[64]))
        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not address(ext_call.return_data[64]):
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[64]))
    staticcall address(ext_call.return_data[64]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0], 2 * ext_call.return_data[0]
}

function sub_077d97d7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
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

function borrow(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    mem[196] = 0
    mem[228] = this.address
    require ext_code.size(stor3)
    call stor3.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[32]):
        if not address(ext_call.return_data[64]):
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
            else:
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[64]))
            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > sub_1a9a35e6[address(arg1)]:
                revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not address(ext_call.return_data[64]):
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > sub_1a9a35e6[address(arg1)]:
                revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[64]))
            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -ext_call.return_data[0]:
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
            else:
                if not ext_call.return_data[0]:
                    if -ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require -ext_call.return_data[0]
                    if 0 / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(6 * ceil32(return_data.size)) + 197 len 31]
                    if -ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require -ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
}

function withdrawSupply(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if not address(ext_call.return_data[64]):
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if 0 > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(7 * ceil32(return_data.size)) + 197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -ext_call.return_data[0]:
                    if 0 > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if not ext_call.return_data[0]:
                        if -ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require -ext_call.return_data[0]
                        if 0 / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(10 * ceil32(return_data.size)) + 197 len 31]
                        if -ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require -ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if not address(ext_call.return_data[64]):
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    if 0 > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(8 * ceil32(return_data.size)) + 197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_1a9a35e6[address(arg1)]:
                    revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -ext_call.return_data[0]:
                    if 0 > sub_1a9a35e6[address(arg1)]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if not ext_call.return_data[0]:
                        if -ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require -ext_call.return_data[0]
                        if 0 / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(11 * ceil32(return_data.size)) + 197 len 31]
                        if -ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require -ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / -ext_call.return_data[0] > sub_1a9a35e6[address(arg1)]:
                            revert with 0, 'Dangerous LF reached'
}

function sub_507c9ff0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[32]):
        if not address(ext_call.return_data[64]):
            require ext_code.size(stor3)
            staticcall stor3.getConfiguration(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[30 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(4 * ceil32(return_data.size)) + 197 len 31]
                    else:
                        return 0
                else:
                    return 0
            if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(4 * ceil32(return_data.size)) + 197 len 31]
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(4 * ceil32(return_data.size)) + 197 len 31]
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 0:
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                    return 0
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, -10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18
            if 0 > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                return 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18, 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18, 
                   -10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18
        require ext_code.size(address(ext_call.return_data[64]))
        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(stor3)
        staticcall stor3.getConfiguration(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[30 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 197 len 31]
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
        if not ext_call.return_data[0]:
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 0
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not address(ext_call.return_data[64]):
        require ext_code.size(stor3)
        staticcall stor3.getConfiguration(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[30 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 197 len 31]
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
        if not ext_call.return_data[0]:
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 0
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 
               ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
    require ext_code.size(address(ext_call.return_data[64]))
    staticcall address(ext_call.return_data[64]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor3)
    staticcall stor3.getConfiguration(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[30 len 2]:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
        if 0 <= 2 * ext_call.return_data[0]:
            if 0 >= 2 * ext_call.return_data[0]:
                return 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 2 * ext_call.return_data[0]
        if 2 * ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= 2 * ext_call.return_data[0]:
            return -2 * ext_call.return_data[0], 0
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
    if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(7 * ceil32(return_data.size)) + 197 len 31]
    if not ext_call.return_data[0]:
        if 0 <= 2 * ext_call.return_data[0]:
            if 0 >= 2 * ext_call.return_data[0]:
                return 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 2 * ext_call.return_data[0]
        if 2 * ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= 2 * ext_call.return_data[0]:
            return -2 * ext_call.return_data[0], 0
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(7 * ceil32(return_data.size)) + 197 len 31]
    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 2 * ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
            return 0
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, (2 * ext_call.return_data[0]) - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
    if 2 * ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
        return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0]), 0
    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0]), 
           (2 * ext_call.return_data[0]) - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
}



}
