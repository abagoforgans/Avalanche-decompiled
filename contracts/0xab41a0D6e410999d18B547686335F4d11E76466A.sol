contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_66dcd6d5;
uint256 totalClaimed;
uint256 totalDividend;
address tokenFeesAddress;
address collectionAddress;
address stakingAddress;
mapping of uint256 lastDividendAt;
mapping of uint256 sub_d33a5585;
address stor9;
address stor10;

function totalDividend() {
    return totalDividend
}

function sub_66dcd6d5(?) {
    return sub_66dcd6d5
}

function collectionAddress() {
    return collectionAddress
}

function owner() {
    return owner
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function sub_d33a5585(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d33a5585[arg1]
}

function totalClaimed() {
    return totalClaimed
}

function stakingAddress() {
    return stakingAddress
}

function tokenFeesAddress() {
    return tokenFeesAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function getTotalCollected() {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalClaimed:
        revert with 0, 17
    return (ext_call.return_data[0] + totalClaimed)
}

function getTokenBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    if totalDividend < lastDividendAt[arg1]:
        revert with 0, 17
    return (totalDividend - lastDividendAt[arg1])
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_882dc778(?) {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != sub_66dcd6d5:
        if ext_call.return_data[0] < sub_66dcd6d5:
            revert with 0, 17
        sub_66dcd6d5 = ext_call.return_data[0]
        require ext_code.size(stor9)
        staticcall stor9.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
}

function getTokensBalance(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _25 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor9)
        staticcall stor9.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _25
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == bool(mem[_29])
        if mem[_29]:
            mem[0] = _25
            mem[32] = 7
            if totalDividend < lastDividendAt[_25]:
                revert with 0, 17
            if 0 > !(totalDividend - lastDividendAt[_25]):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_a71604e8(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stakingAddress != msg.sender:
        revert with 0, 'Not staking contract'
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != sub_66dcd6d5:
        if ext_call.return_data[0] < sub_66dcd6d5:
            revert with 0, 17
        sub_66dcd6d5 = ext_call.return_data[0]
        require ext_code.size(stor9)
        staticcall stor9.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 7
        lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit Deposit(address(cd[4]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]));
}

function withdraw(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stakingAddress != msg.sender:
        revert with 0, 'Not staking contract'
    mem[100] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] == sub_66dcd6d5:
        idx = 0
        while idx < arg2.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_54] == bool(mem[_54])
            if not mem[_54]:
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 7
                if lastDividendAt[cd[((32 * idx) + arg2 + 36)]] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[cd[((32 * idx) + arg2 + 36)]]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[cd[((32 * idx) + arg2 + 36)]]):
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 7
                if lastDividendAt[cd[((32 * idx) + arg2 + 36)]] > !(totalDividend - lastDividendAt[cd[((32 * idx) + arg2 + 36)]]):
                    revert with 0, 17
                lastDividendAt[cd[((32 * idx) + arg2 + 36)]] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 8
        if sub_d33a5585[address(arg1)] > -1:
            revert with 0, 17
        if totalClaimed > -1:
            revert with 0, 17
        mem[mem[64] + 36] = 0
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_66dcd6d5 = mem[_68]
    else:
        if ext_call.return_data[0] < sub_66dcd6d5:
            revert with 0, 17
        sub_66dcd6d5 = ext_call.return_data[0]
        require ext_code.size(stor9)
        staticcall stor9.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
        idx = 0
        while idx < arg2.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == bool(mem[_53])
            if not mem[_53]:
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 7
                if lastDividendAt[cd[((32 * idx) + arg2 + 36)]] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[cd[((32 * idx) + arg2 + 36)]]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[cd[((32 * idx) + arg2 + 36)]]):
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 7
                if lastDividendAt[cd[((32 * idx) + arg2 + 36)]] > !(totalDividend - lastDividendAt[cd[((32 * idx) + arg2 + 36)]]):
                    revert with 0, 17
                lastDividendAt[cd[((32 * idx) + arg2 + 36)]] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 8
        if sub_d33a5585[address(arg1)] > -1:
            revert with 0, 17
        if totalClaimed > -1:
            revert with 0, 17
        mem[mem[64] + 36] = 0
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_66dcd6d5 = mem[_67]
    emit Claimed(address(arg1), 0);
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit Withdraw(address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length]));
}

function calculateClaim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_66dcd6d5:
        mem[ceil32(return_data.size) + 96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(stor9)
        staticcall stor9.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _11 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127
        _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _13
        require _11 + (32 * _13) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _11 + 128 len 32 * _13]
        idx = 0
        while idx < _13:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _70 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _70
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_79] == bool(mem[_79])
            if mem[_79]:
                mem[0] = _70
                mem[32] = 7
                if totalDividend < lastDividendAt[_70]:
                    revert with 0, 17
                if totalDividend - lastDividendAt[_70] > -1:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[_70]):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    require ext_code.size(stor9)
    staticcall stor9.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_66dcd6d5:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 0 > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(stor9)
    staticcall stor9.tokensOfOwner(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _23 = mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 127
    _27 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
    require _23 + (32 * _27) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _27] = mem[(2 * ceil32(return_data.size)) + _23 + 128 len 32 * _27]
    idx = 0
    s = 0
    while idx < _27:
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _72 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        require ext_code.size(stor9)
        staticcall stor9.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _72
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_80] == bool(mem[_80])
        if not mem[_80]:
            if 0 > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                revert with 0, 17
            if s > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])
            continue 
        mem[0] = _72
        mem[32] = 7
        if totalDividend < lastDividendAt[_72]:
            revert with 0, 17
        if totalDividend - lastDividendAt[_72] > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        if s > !(totalDividend - lastDividendAt[_72] + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[_72] + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])
        continue 
    return s
}

function claim() {
    mem[100] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == sub_66dcd6d5:
        mem[ceil32(return_data.size) + 96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor9)
        staticcall stor9.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _11 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
        _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _13
        require _11 + (32 * _13) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _11 + 128 len 32 * _13]
        idx = 0
        while idx < _13:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _80 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _80
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_88] == bool(mem[_88])
            if not mem[_88]:
                mem[0] = _80
                mem[32] = 7
                if lastDividendAt[_80] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[_80]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[_80]):
                    revert with 0, 17
                mem[0] = _80
                mem[32] = 7
                if lastDividendAt[_80] > !(totalDividend - lastDividendAt[_80]):
                    revert with 0, 17
                lastDividendAt[_80] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[0] < sub_66dcd6d5:
            revert with 0, 17
        sub_66dcd6d5 = ext_call.return_data[0]
        require ext_code.size(stor9)
        staticcall stor9.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(stor9)
        staticcall stor9.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _20 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
        _24 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        require _20 + (32 * _24) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _24] = mem[(2 * ceil32(return_data.size)) + _20 + 128 len 32 * _24]
        idx = 0
        while idx < _24:
            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _78 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _78
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == bool(mem[_87])
            if not mem[_87]:
                mem[0] = _78
                mem[32] = 7
                if lastDividendAt[_78] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[_78]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[_78]):
                    revert with 0, 17
                mem[0] = _78
                mem[32] = 7
                if lastDividendAt[_78] > !(totalDividend - lastDividendAt[_78]):
                    revert with 0, 17
                lastDividendAt[_78] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    revert with 0, 'No balance due'
}

function sub_da3a9c8f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = this.address
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == sub_66dcd6d5:
        mem[ceil32(return_data.size) + 96] = 0x9f3d991c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(arg1)
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = arg3
        require ext_code.size(stor9)
        staticcall stor9.0x9f3d991c with:
                gas gas_remaining wei
               args address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _11 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127
        _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _13
        require _11 + (32 * _13) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _11 + 128 len 32 * _13]
        idx = 0
        while idx < _13:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _80 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _80
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_88] == bool(mem[_88])
            if not mem[_88]:
                mem[0] = _80
                mem[32] = 7
                if lastDividendAt[_80] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[_80]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[_80]):
                    revert with 0, 17
                mem[0] = _80
                mem[32] = 7
                if lastDividendAt[_80] > !(totalDividend - lastDividendAt[_80]):
                    revert with 0, 17
                lastDividendAt[_80] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[0] < sub_66dcd6d5:
            revert with 0, 17
        sub_66dcd6d5 = ext_call.return_data[0]
        require ext_code.size(stor9)
        staticcall stor9.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
            revert with 0, 17
        totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 0x9f3d991c00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        mem[(2 * ceil32(return_data.size)) + 164] = arg3
        require ext_code.size(stor9)
        staticcall stor9.0x9f3d991c with:
                gas gas_remaining wei
               args address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _20 = mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 127
        _24 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], address(arg1) << 64 + 96]
        require _20 + (32 * _24) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _24] = mem[(2 * ceil32(return_data.size)) + _20 + 128 len 32 * _24]
        idx = 0
        while idx < _24:
            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _78 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor9)
            staticcall stor9.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _78
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == bool(mem[_87])
            if not mem[_87]:
                mem[0] = _78
                mem[32] = 7
                if lastDividendAt[_78] > -1:
                    revert with 0, 17
            else:
                if totalDividend < lastDividendAt[_78]:
                    revert with 0, 17
                if 0 > !(totalDividend - lastDividendAt[_78]):
                    revert with 0, 17
                mem[0] = _78
                mem[32] = 7
                if lastDividendAt[_78] > !(totalDividend - lastDividendAt[_78]):
                    revert with 0, 17
                lastDividendAt[_78] = totalDividend
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    revert with 0, 'No balance due'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(stor10)
        if eth.balance(this.address):
            call stor10.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != sub_66dcd6d5:
            if ext_call.return_data[0] < sub_66dcd6d5:
                revert with 0, 17
            sub_66dcd6d5 = ext_call.return_data[0]
            require ext_code.size(stor9)
            staticcall stor9.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                revert with 0, 17
            totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
    else:
        if unknown_0xd2068857(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdb2e21bc(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdb2e21bc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor10)
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xdbfe3473(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _434 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 160]
                        require ext_code.size(stor9)
                        staticcall stor9.isStaked(uint256 arg1) with:
                                gas gas_remaining wei
                               args _434
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_464] == bool(mem[_464])
                        if mem[_464]:
                            mem[0] = _434
                            mem[32] = 7
                            if totalDividend < lastDividendAt[_434]:
                                revert with 0, 17
                            if 0 > !(totalDividend - lastDividendAt[_434]):
                                revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    return 0
                if unknown_0xdca4b8d4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenFeesAddress
                if uint32(call.func_hash) >> 224 != unknown_0xea345540(?????):
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    require unknown_0xfbe5d87e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !totalClaimed:
                        revert with 0, 17
                    return (ext_call.return_data[0] + totalClaimed)
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                mem[132] = this.address
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_66dcd6d5:
                    mem[ceil32(return_data.size) + 128] = 0x8462151c00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = address(cd[4])
                    require ext_code.size(stor9)
                    staticcall stor9.tokensOfOwner(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _127 = mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64
                    require mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 159
                    _137 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 129
                    mem[(2 * ceil32(return_data.size)) + 128] = _137
                    require _127 + (32 * _137) + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 160 len 32 * _137] = mem[ceil32(return_data.size) + _127 + 160 len 32 * _137]
                    idx = 0
                    while idx < _137:
                        if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                            revert with 0, 50
                        _436 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                        require ext_code.size(stor9)
                        staticcall stor9.isStaked(uint256 arg1) with:
                                gas gas_remaining wei
                               args _436
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_465] == bool(mem[_465])
                        if mem[_465]:
                            mem[0] = _436
                            mem[32] = 7
                            if totalDividend < lastDividendAt[_436]:
                                revert with 0, 17
                            if totalDividend - lastDividendAt[_436] > -1:
                                revert with 0, 17
                            if 0 > !(totalDividend - lastDividendAt[_436]):
                                revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    return 0
                require ext_code.size(stor9)
                staticcall stor9.0x18160ddd with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_66dcd6d5:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 128] = 0x8462151c00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 132] = address(cd[4])
                require ext_code.size(stor9)
                staticcall stor9.tokensOfOwner(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _198 = mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64
                require mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 159
                _207 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]
                require _198 + (32 * _207) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 160 len 32 * _207] = mem[(2 * ceil32(return_data.size)) + _198 + 160 len 32 * _207]
                idx = 0
                s = 0
                while idx < _207:
                    if idx >= mem[(4 * ceil32(return_data.size)) + 128]:
                        revert with 0, 50
                    _438 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args _438
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_466] == bool(mem[_466])
                    if not mem[_466]:
                        if 0 > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                            revert with 0, 17
                        if s > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])
                        continue 
                    mem[0] = _438
                    mem[32] = 7
                    if totalDividend < lastDividendAt[_438]:
                        revert with 0, 17
                    if totalDividend - lastDividendAt[_438] > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                        revert with 0, 17
                    if s > !(totalDividend - lastDividendAt[_438] + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + totalDividend - lastDividendAt[_438] + (ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0])
                    continue 
                return s
            if unknown_0xd2068857(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return lastDividendAt[cd[4]]
            if unknown_0xd33a5585(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return sub_d33a5585[cd[4]]
            if unknown_0xd54ad2a1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalClaimed
            if unknown_0xd7b4be24(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return stakingAddress
            require unknown_0xda3a9c8f(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            mem[132] = this.address
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == sub_66dcd6d5:
                mem[ceil32(return_data.size) + 128] = 0x9f3d991c00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = address(cd[4])
                mem[ceil32(return_data.size) + 164] = cd[36]
                mem[ceil32(return_data.size) + 196] = cd[68]
                require ext_code.size(stor9)
                staticcall stor9.0x9f3d991c with:
                        gas gas_remaining wei
                       args address(cd[4]), cd[36], cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _139 = mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64
                require mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 159
                _148 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], address(cd[4]) << 64 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _148
                require _139 + (32 * _148) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len 32 * _148] = mem[ceil32(return_data.size) + _139 + 160 len 32 * _148]
                idx = 0
                while idx < _148:
                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                        revert with 0, 50
                    _432 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args _432
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_463] == bool(mem[_463])
                    if not mem[_463]:
                        mem[0] = _432
                        mem[32] = 7
                        if lastDividendAt[_432] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[_432]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[_432]):
                            revert with 0, 17
                        mem[0] = _432
                        mem[32] = 7
                        if lastDividendAt[_432] > !(totalDividend - lastDividendAt[_432]):
                            revert with 0, 17
                        lastDividendAt[_432] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ext_call.return_data[0] < sub_66dcd6d5:
                    revert with 0, 17
                sub_66dcd6d5 = ext_call.return_data[0]
                require ext_code.size(stor9)
                staticcall stor9.0x18160ddd with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                    revert with 0, 17
                totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 128] = 0x9f3d991c00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 132] = address(cd[4])
                mem[(2 * ceil32(return_data.size)) + 164] = cd[36]
                mem[(2 * ceil32(return_data.size)) + 196] = cd[68]
                require ext_code.size(stor9)
                staticcall stor9.0x9f3d991c with:
                        gas gas_remaining wei
                       args address(cd[4]), cd[36], cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _205 = mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64
                require mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 159
                _216 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], address(cd[4]) << 64 + 128]
                require _205 + (32 * _216) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 160 len 32 * _216] = mem[(2 * ceil32(return_data.size)) + _205 + 160 len 32 * _216]
                idx = 0
                while idx < _216:
                    if idx >= mem[(4 * ceil32(return_data.size)) + 128]:
                        revert with 0, 50
                    _430 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args _430
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_462] == bool(mem[_462])
                    if not mem[_462]:
                        mem[0] = _430
                        mem[32] = 7
                        if lastDividendAt[_430] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[_430]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[_430]):
                            revert with 0, 17
                        mem[0] = _430
                        mem[32] = 7
                        if lastDividendAt[_430] > !(totalDividend - lastDividendAt[_430]):
                            revert with 0, 17
                        lastDividendAt[_430] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            revert with 0, 'No balance due'
        if unknown_0x8293744b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4b6acafb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalDividend
            if uint32(call.func_hash) >> 224 != unknown_0x4e71d92d(?????):
                if unknown_0x66dcd6d5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_66dcd6d5
                if unknown_0x6aa00371(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return collectionAddress
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            require not msg.value
            mem[132] = this.address
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == sub_66dcd6d5:
                mem[ceil32(return_data.size) + 128] = 0x8462151c00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                require ext_code.size(stor9)
                staticcall stor9.tokensOfOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _86 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _99 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = _99
                require _86 + (32 * _99) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 160 len 32 * _99] = mem[ceil32(return_data.size) + _86 + 160 len 32 * _99]
                idx = 0
                while idx < _99:
                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                        revert with 0, 50
                    _428 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args _428
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_461] == bool(mem[_461])
                    if not mem[_461]:
                        mem[0] = _428
                        mem[32] = 7
                        if lastDividendAt[_428] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[_428]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[_428]):
                            revert with 0, 17
                        mem[0] = _428
                        mem[32] = 7
                        if lastDividendAt[_428] > !(totalDividend - lastDividendAt[_428]):
                            revert with 0, 17
                        lastDividendAt[_428] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ext_call.return_data[0] < sub_66dcd6d5:
                    revert with 0, 17
                sub_66dcd6d5 = ext_call.return_data[0]
                require ext_code.size(stor9)
                staticcall stor9.0x18160ddd with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                    revert with 0, 17
                totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 128] = 0x8462151c00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                require ext_code.size(stor9)
                staticcall stor9.tokensOfOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _159 = mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 128 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _169 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _159 + (32 * _169) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 160 len 32 * _169] = mem[(2 * ceil32(return_data.size)) + _159 + 160 len 32 * _169]
                idx = 0
                while idx < _169:
                    if idx >= mem[(4 * ceil32(return_data.size)) + 128]:
                        revert with 0, 50
                    _426 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args _426
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_460] == bool(mem[_460])
                    if not mem[_460]:
                        mem[0] = _426
                        mem[32] = 7
                        if lastDividendAt[_426] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[_426]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[_426]):
                            revert with 0, 17
                        mem[0] = _426
                        mem[32] = 7
                        if lastDividendAt[_426] > !(totalDividend - lastDividendAt[_426]):
                            revert with 0, 17
                        lastDividendAt[_426] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            revert with 0, 'No balance due'
        if uint32(call.func_hash) >> 224 != unknown_0x8293744b(?????):
            if unknown_0x882dc778(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != sub_66dcd6d5:
                    if ext_call.return_data[0] < sub_66dcd6d5:
                        revert with 0, 17
                    sub_66dcd6d5 = ext_call.return_data[0]
                    require ext_code.size(stor9)
                    staticcall stor9.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                        revert with 0, 17
                    totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9105d748(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        return 0
                    if totalDividend < lastDividendAt[cd[4]]:
                        revert with 0, 17
                    return (totalDividend - lastDividendAt[cd[4]])
                require unknown_0xa71604e8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if stakingAddress != msg.sender:
                    revert with 0, 'Not staking contract'
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != sub_66dcd6d5:
                    if ext_call.return_data[0] < sub_66dcd6d5:
                        revert with 0, 17
                    sub_66dcd6d5 = ext_call.return_data[0]
                    require ext_code.size(stor9)
                    staticcall stor9.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                        revert with 0, 17
                    totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 36).length:
                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                    mem[32] = 7
                    lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                emit Deposit(address(cd[4]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]));
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            if stakingAddress != msg.sender:
                revert with 0, 'Not staking contract'
            mem[132] = this.address
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            if ext_call.return_data[0] == sub_66dcd6d5:
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_321] == bool(mem[_321])
                    if not mem[_321]:
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = 7
                        if lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]):
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = 7
                        if lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] > !(totalDividend - lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]):
                            revert with 0, 17
                        lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(cd[4])
                mem[32] = 8
                if sub_d33a5585[address(cd[4])] > -1:
                    revert with 0, 17
                if totalClaimed > -1:
                    revert with 0, 17
                mem[mem[64] + 36] = 0
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                sub_66dcd6d5 = mem[_380]
            else:
                if ext_call.return_data[0] < sub_66dcd6d5:
                    revert with 0, 17
                sub_66dcd6d5 = ext_call.return_data[0]
                require ext_code.size(stor9)
                staticcall stor9.0x18160ddd with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if totalDividend > !(ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]):
                    revert with 0, 17
                totalDividend += ext_call.return_data[0] - sub_66dcd6d5 / ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                    require ext_code.size(stor9)
                    staticcall stor9.isStaked(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_320] == bool(mem[_320])
                    if not mem[_320]:
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = 7
                        if lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] > -1:
                            revert with 0, 17
                    else:
                        if totalDividend < lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]:
                            revert with 0, 17
                        if 0 > !(totalDividend - lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]):
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = 7
                        if lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] > !(totalDividend - lastDividendAt[cd[((32 * idx) + cd[36] + 36)]]):
                            revert with 0, 17
                        lastDividendAt[cd[((32 * idx) + cd[36] + 36)]] = totalDividend
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(cd[4])
                mem[32] = 8
                if sub_d33a5585[address(cd[4])] > -1:
                    revert with 0, 17
                if totalClaimed > -1:
                    revert with 0, 17
                mem[mem[64] + 36] = 0
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[4]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10)
                staticcall stor10.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                sub_66dcd6d5 = mem[_379]
            emit Claimed(address(cd[4]), 0);
            require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            emit Withdraw(address(cd[4]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]));
}



}
