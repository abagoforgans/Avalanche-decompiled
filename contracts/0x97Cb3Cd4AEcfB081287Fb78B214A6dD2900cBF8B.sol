contract main {




// =====================  Runtime code  =====================


#
#  - sub_6d931903(?)
#  - distribute(address arg1, uint256 arg2)
#
address owner;
address treasuryAddress;
uint256 treasuryFee;
address sub_5dfb849bAddress;
uint256 sub_68bb600b;
address sub_7d3cdd60Address;
uint256 sub_cb6adbe9;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
mapping of struct info;
array of struct stor13;
uint256 totalDeposits;
address uSDCAddress;
uint8 stor16; offset 160
uint128 stor16; offset 160
address sub_8b8de86cAddress;

function getDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor13.length:
        revert with 0, 'Index exceed no of deposits'
    return info[stor13[arg1].field_0].field_0, info[stor13[arg1].field_0].field_256
}

function getTotalDeposits() payable {
    return totalDeposits
}

function getTreasuryFee() payable {
    return treasuryFee
}

function getInfo() payable {
    return info[msg.sender].field_0, info[msg.sender].field_256
}

function sub_5dfb849b(?) payable {
    return sub_5dfb849bAddress
}

function sub_68bb600b(?) payable {
    return sub_68bb600b
}

function sub_7d3cdd60(?) payable {
    return sub_7d3cdd60Address
}

function sub_8b8de86c(?) payable {
    return sub_8b8de86cAddress
}

function owner() payable {
    return owner
}

function getUSDCAddress() payable {
    return uSDCAddress
}

function sub_cb6adbe9(?) payable {
    return sub_cb6adbe9
}

function getTreasuryAddress() payable {
    return treasuryAddress
}

function _fallback() payable {
    revert
}

function sub_c416ee2d(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_5dfb849bAddress = arg1
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    treasuryAddress = arg1
}

function sub_f6f8399e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_7d3cdd60Address = address(arg1)
}

function sub_58cce5d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    Mask(96, 0, stor16.field_160) = Mask(96, 0, bool(arg1))
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'Zero address'
    if owner == arg1:
        revert with 0, 'Already owner'
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if arg1 >= 1000:
        revert with 0, 'Max Fee'
    if arg2 >= 1000:
        revert with 0, 'Max Fee'
    if arg3 >= 1000:
        revert with 0, 'Max Fee'
    treasuryFee = arg2
    sub_cb6adbe9 = arg1
    sub_68bb600b = arg3
}

function clear() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    idx = 0
    while idx < stor13.length:
        mem[32] = 12
        info[stor13[idx].field_0].field_0 = 0
        info[stor13[idx].field_0].field_256 = 0
        mem[0] = 13
        stor13[idx].field_0 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor13.length = 0
    idx = 0
    while stor13.length > idx:
        stor13[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'USDC address cannot be 0'
    uSDCAddress = arg1
    stor10 = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8b8de86cAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6afde6ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not address(arg1):
        revert with 0, 'QS address cannot be 0'
    sub_8b8de86cAddress = address(arg1)
    stor11 = address(arg1)
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0bcc11d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if info[address(arg1)].field_256:
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), info[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if info[address(arg1)].field_0 < info[address(arg1)].field_0:
            revert with 'NH{q', 17
        info[address(arg1)].field_0 = 0
        info[address(arg1)].field_256 = info[address(arg1)].field_256
        if totalDeposits < info[address(arg1)].field_0:
            revert with 'NH{q', 17
        totalDeposits -= info[address(arg1)].field_0
}

function sub_9ba7ef5f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
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
        args treasuryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    totalDeposits = 0
    idx = 0
    while idx < stor13.length:
        mem[0] = stor13[idx].field_0
        mem[32] = 12
        info[stor13[idx].field_0].field_0 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    while idx < stor13.length:
        mem[0] = 13
        if idx == -1:
            revert with 'NH{q', 17
        if stor13[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor13.length++
        stor13[stor13.length].field_0 = arg1
    if info[address(arg1)].field_0 > !arg2:
        revert with 'NH{q', 17
    info[address(arg1)].field_0 += arg2
    info[address(arg1)].field_256 = arg1
    if totalDeposits > !arg2:
        revert with 'NH{q', 17
    totalDeposits += arg2
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    while idx < stor13.length:
        mem[0] = 13
        if idx == -1:
            revert with 'NH{q', 17
        if stor13[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor13.length++
        stor13[stor13.length].field_0 = msg.sender or Mask(96, 160, stor13[stor13.length].field_0)
    if info[msg.sender].field_0 > !arg1:
        revert with 'NH{q', 17
    info[msg.sender].field_0 += arg1
    info[msg.sender].field_256 = msg.sender
    if totalDeposits > !arg1:
        revert with 'NH{q', 17
    totalDeposits += arg1
}

function sub_f1458d4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    idx = 0
    while idx < stor13.length:
        mem[96] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
        mem[100] = info[stor13[idx].field_0].field_256
        mem[132] = info[stor13[idx].field_0].field_0
        require ext_code.size(address(arg1))
        call address(arg1).0x47e7ef24 with:
             gas gas_remaining wei
            args info[stor13[idx].field_0].field_256, info[stor13[idx].field_0].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= stor13.length:
            revert with 'NH{q', 50
        mem[0] = stor13[idx].field_0
        mem[32] = 12
        if totalDeposits < info[stor13[idx].field_0].field_0:
            revert with 'NH{q', 17
        totalDeposits -= info[stor13[idx].field_0].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getUsers() payable {
    mem[64] = (32 * stor13.length) + 128
    mem[96] = stor13.length
    if not stor13.length:
        mem[(32 * stor13.length) + 128] = 32
        mem[(32 * stor13.length) + 160] = stor13.length
        idx = 0
        s = 128
        t = (32 * stor13.length) + 192
        while idx < stor13.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor13.length) + 128
           len (96 * stor13.length) + 64
    mem[128] = address(stor13.field_0)
    idx = 128
    s = 0
    while (32 * stor13.length) + 96 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor13.length) + 128] = 32
    mem[(32 * stor13.length) + 160] = stor13.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor13.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor13.length) + -mem[64] + 192
}

function sub_c5aaa1ef(?) payable {
    require calldata.size - 4 >= 32
    if info[msg.sender].field_256:
        require ext_code.size(stor10)
        if arg1 <= info[msg.sender].field_0:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[msg.sender].field_0 < arg1:
                revert with 'NH{q', 17
            info[msg.sender].field_0 -= arg1
            info[msg.sender].field_256 = info[msg.sender].field_256
            if totalDeposits < arg1:
                revert with 'NH{q', 17
            totalDeposits -= arg1
        else:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, info[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[msg.sender].field_0 < info[msg.sender].field_0:
                revert with 'NH{q', 17
            info[msg.sender].field_0 = 0
            info[msg.sender].field_256 = info[msg.sender].field_256
            if totalDeposits < info[msg.sender].field_0:
                revert with 'NH{q', 17
            totalDeposits -= info[msg.sender].field_0
}

function sub_85d84e25(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor16.field_160):
        revert with 0, 'P'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _877 = mem[160]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = mem[140 len 20]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = address(_877)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101], address(_877)
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NP'
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].getReserves() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _891 = mem[128]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(_891):
        if Mask(112, 0, ext_call.return_data[32]) < cd[68]:
            revert with 0, 'T'
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = 1
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 1, Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _1747 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0
            require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 <= test266151307()
            require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 128
            _1752 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]
            if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 98 > test266151307():
                revert with 'NH{q', 65
            mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 98
            mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _1752
            require _1747 + (32 * _1752) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _1752] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _1747 + 129 len 32 * _1752]
            if 1 >= _1752:
                revert with 'NH{q', 50
            _2561 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
            if 1 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2583 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_2583]:
                if 0 >= _1752:
                    revert with 'NH{q', 50
                if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                    revert with 'NH{q', 17
                if not _2561:
                    revert with 'NH{q', 18
                if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _2561:
                    revert with 0, 'MAX.'
                if 600 > !block.timestamp:
                    revert with 'NH{q', 17
                if 0 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                _2653 = mem[128]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_2653))
                call address(_2653).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2669] == bool(mem[_2669])
                if not ('cd', 100).length:
                    revert with 'NH{q', 50
                if uSDCAddress == mem[140 len 20]:
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = totalDeposits
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                else:
                    _2737 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2737 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2737]:
                        revert with 'NH{q', 50
                    mem[_2737 + 32] = uSDCAddress
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2737]:
                        revert with 'NH{q', 50
                    mem[_2737 + 64] = mem[140 len 20]
                    mem[_2737 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_2737 + 100] = totalDeposits
                    mem[_2737 + 132] = 0
                    mem[_2737 + 164] = 160
                    mem[_2737 + 260] = mem[_2737]
                    idx = 0
                    s = _2737 + 32
                    t = _2737 + 292
                    while idx < mem[_2737]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2737 + 196] = this.address
                    mem[_2737 + 228] = block.timestamp + 600
                    require ext_code.size(stor11)
                    call stor11.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2737 + (32 * mem[_2737]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3383 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3399 = mem[_3383]
                    require mem[_3383] <= test266151307()
                    require _3383 + return_data.size > _3383 + mem[_3383] + 31
                    _3411 = mem[_3383 + mem[_3383]]
                    if mem[_3383 + mem[_3383]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_3383 + mem[_3383]]) + 1 < 0 or _3383 + ceil32(return_data.size) + ceil32(32 * mem[_3383 + mem[_3383]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _3383 + ceil32(return_data.size) + ceil32(32 * mem[_3383 + mem[_3383]]) + 1
                    mem[_3383 + ceil32(return_data.size)] = _3411
                    require _3399 + (32 * _3411) + 32 <= return_data.size
                    mem[_3383 + ceil32(return_data.size) + 32 len 32 * _3411] = mem[_3383 + _3399 + 32 len 32 * _3411]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _3953 = mem[128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3953))
                    staticcall address(_3953).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4002 = mem[_3983]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4002
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4002, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            else:
                if bool(bool(mem[_2583] < 78)) or bool(bool(mem[_2583] < 32)):
                    if 0 >= _1752:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_2583] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2561:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_2583] / _2561:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _2686 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_2686))
                    call address(_2686).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2705] == bool(mem[_2705])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _2804 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2804 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_2804]:
                            revert with 'NH{q', 50
                        mem[_2804 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2804]:
                            revert with 'NH{q', 50
                        mem[_2804 + 64] = mem[140 len 20]
                        mem[_2804 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_2804 + 100] = totalDeposits
                        mem[_2804 + 132] = 0
                        mem[_2804 + 164] = 160
                        mem[_2804 + 260] = mem[_2804]
                        idx = 0
                        s = _2804 + 32
                        t = _2804 + 292
                        while idx < mem[_2804]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2804 + 196] = this.address
                        mem[_2804 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2804 + (32 * mem[_2804]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3382 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3398 = mem[_3382]
                        require mem[_3382] <= test266151307()
                        require _3382 + return_data.size > _3382 + mem[_3382] + 31
                        _3410 = mem[_3382 + mem[_3382]]
                        if mem[_3382 + mem[_3382]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3382 + mem[_3382]]) + 1 < 0 or _3382 + ceil32(return_data.size) + ceil32(32 * mem[_3382 + mem[_3382]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3382 + ceil32(return_data.size) + ceil32(32 * mem[_3382 + mem[_3382]]) + 1
                        mem[_3382 + ceil32(return_data.size)] = _3410
                        require _3398 + (32 * _3410) + 32 <= return_data.size
                        mem[_3382 + ceil32(return_data.size) + 32 len 32 * _3410] = mem[_3382 + _3398 + 32 len 32 * _3410]
                        var169001 = _3382 + _3398 + (32 * _3410) + 32
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _3950 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3950))
                        staticcall address(_3950).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4001 = mem[_3982]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4001
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4001, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    s = 10
                    t = 1
                    idx = mem[_2583]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _1752:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2561:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _2561:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _3445 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3445))
                    call address(_3445).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3478] == bool(mem[_3478])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _3562 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3562 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_3562]:
                            revert with 'NH{q', 50
                        mem[_3562 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_3562]:
                            revert with 'NH{q', 50
                        mem[_3562 + 64] = mem[140 len 20]
                        mem[_3562 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_3562 + 100] = totalDeposits
                        mem[_3562 + 132] = 0
                        mem[_3562 + 164] = 160
                        mem[_3562 + 260] = mem[_3562]
                        idx = 0
                        s = _3562 + 32
                        t = _3562 + 292
                        while idx < mem[_3562]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3562 + 196] = this.address
                        mem[_3562 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3562 + (32 * mem[_3562]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3981 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4000 = mem[_3981]
                        require mem[_3981] <= test266151307()
                        require _3981 + return_data.size > _3981 + mem[_3981] + 31
                        _4017 = mem[_3981 + mem[_3981]]
                        if mem[_3981 + mem[_3981]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3981 + mem[_3981]]) + 1 < 0 or _3981 + ceil32(return_data.size) + ceil32(32 * mem[_3981 + mem[_3981]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3981 + ceil32(return_data.size) + ceil32(32 * mem[_3981 + mem[_3981]]) + 1
                        mem[_3981 + ceil32(return_data.size)] = _4017
                        require _4000 + (32 * _4017) + 32 <= return_data.size
                        mem[_3981 + ceil32(return_data.size) + 32 len 32 * _4017] = mem[_3981 + _4000 + 32 len 32 * _4017]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _4265 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4265))
                        staticcall address(_4265).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4302 = mem[_4292]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4302
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4302, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        else:
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if 10^ext_call.return_data[0] > -1:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = 10^ext_call.return_data[0]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^ext_call.return_data[0], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _1746 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32
                require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 128
                _1751 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 98 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _1751
                require _1746 + (32 * _1751) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _1751] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _1746 + 129 len 32 * _1751]
                if 1 >= _1751:
                    revert with 'NH{q', 50
                _2559 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[172 len 20])
                staticcall mem[172 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2582]:
                    if 0 >= _1751:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2559:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _2559:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _2650 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_2650))
                    call address(_2650).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2667] == bool(mem[_2667])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _2731 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2731 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_2731]:
                            revert with 'NH{q', 50
                        mem[_2731 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2731]:
                            revert with 'NH{q', 50
                        mem[_2731 + 64] = mem[140 len 20]
                        mem[_2731 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_2731 + 100] = totalDeposits
                        mem[_2731 + 132] = 0
                        mem[_2731 + 164] = 160
                        mem[_2731 + 260] = mem[_2731]
                        idx = 0
                        s = _2731 + 32
                        t = _2731 + 292
                        while idx < mem[_2731]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2731 + 196] = this.address
                        mem[_2731 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2731 + (32 * mem[_2731]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3381 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3396 = mem[_3381]
                        require mem[_3381] <= test266151307()
                        require _3381 + return_data.size > _3381 + mem[_3381] + 31
                        _3409 = mem[_3381 + mem[_3381]]
                        if mem[_3381 + mem[_3381]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3381 + mem[_3381]]) + 1 < 0 or _3381 + ceil32(return_data.size) + ceil32(32 * mem[_3381 + mem[_3381]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3381 + ceil32(return_data.size) + ceil32(32 * mem[_3381 + mem[_3381]]) + 1
                        mem[_3381 + ceil32(return_data.size)] = _3409
                        require _3396 + (32 * _3409) + 32 <= return_data.size
                        mem[_3381 + ceil32(return_data.size) + 32 len 32 * _3409] = mem[_3381 + _3396 + 32 len 32 * _3409]
                        var169001 = _3381 + _3396 + (32 * _3409) + 32
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _3945 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3945))
                        staticcall address(_3945).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3999 = mem[_3980]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3999
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _3999, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    if bool(bool(mem[_2582] < 78)) or bool(bool(mem[_2582] < 32)):
                        if 0 >= _1751:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_2582] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _2559:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_2582] / _2559:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _2683 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_2683))
                        call address(_2683).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2703 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2703] == bool(mem[_2703])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _2800 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_2800 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_2800]:
                                revert with 'NH{q', 50
                            mem[_2800 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_2800]:
                                revert with 'NH{q', 50
                            mem[_2800 + 64] = mem[140 len 20]
                            mem[_2800 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_2800 + 100] = totalDeposits
                            mem[_2800 + 132] = 0
                            mem[_2800 + 164] = 160
                            mem[_2800 + 260] = mem[_2800]
                            idx = 0
                            s = _2800 + 32
                            t = _2800 + 292
                            while idx < mem[_2800]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2800 + 196] = this.address
                            mem[_2800 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2800 + (32 * mem[_2800]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3380 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3395 = mem[_3380]
                            require mem[_3380] <= test266151307()
                            require _3380 + return_data.size > _3380 + mem[_3380] + 31
                            _3408 = mem[_3380 + mem[_3380]]
                            if mem[_3380 + mem[_3380]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3380 + mem[_3380]]) + 1 < 0 or _3380 + ceil32(return_data.size) + ceil32(32 * mem[_3380 + mem[_3380]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3380 + ceil32(return_data.size) + ceil32(32 * mem[_3380 + mem[_3380]]) + 1
                            mem[_3380 + ceil32(return_data.size)] = _3408
                            require _3395 + (32 * _3408) + 32 <= return_data.size
                            mem[_3380 + ceil32(return_data.size) + 32 len 32 * _3408] = mem[_3380 + _3395 + 32 len 32 * _3408]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _3942 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3942))
                            staticcall address(_3942).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3979 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3998 = mem[_3979]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _3998
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _3998, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    else:
                        s = 10
                        t = 1
                        idx = mem[_2582]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if 0 >= _1751:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _2559:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _2559:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _3440 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_3440))
                        call address(_3440).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3471] == bool(mem[_3471])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _3557 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_3557 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_3557]:
                                revert with 'NH{q', 50
                            mem[_3557 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_3557]:
                                revert with 'NH{q', 50
                            mem[_3557 + 64] = mem[140 len 20]
                            mem[_3557 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_3557 + 100] = totalDeposits
                            mem[_3557 + 132] = 0
                            mem[_3557 + 164] = 160
                            mem[_3557 + 260] = mem[_3557]
                            idx = 0
                            s = _3557 + 32
                            t = _3557 + 292
                            while idx < mem[_3557]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3557 + 196] = this.address
                            mem[_3557 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3557 + (32 * mem[_3557]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3978 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3997 = mem[_3978]
                            require mem[_3978] <= test266151307()
                            require _3978 + return_data.size > _3978 + mem[_3978] + 31
                            _4014 = mem[_3978 + mem[_3978]]
                            if mem[_3978 + mem[_3978]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3978 + mem[_3978]]) + 1 < 0 or _3978 + ceil32(return_data.size) + ceil32(32 * mem[_3978 + mem[_3978]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3978 + ceil32(return_data.size) + ceil32(32 * mem[_3978 + mem[_3978]]) + 1
                            mem[_3978 + ceil32(return_data.size)] = _4014
                            require _3997 + (32 * _4014) + 32 <= return_data.size
                            mem[_3978 + ceil32(return_data.size) + 32 len 32 * _4014] = mem[_3978 + _3997 + 32 len 32 * _4014]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4260 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4260))
                            staticcall address(_4260).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4291 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4301 = mem[_4291]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4301
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4301, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if s * t > -1:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = s * t
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
                idx = 0
                u = 128
                v = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
                while idx < ('cd', 100).length:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s * t, Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _2586 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32
                require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 128
                _2592 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 98 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _2592
                require _2586 + (32 * _2592) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _2592] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _2586 + 129 len 32 * _2592]
                if 1 >= _2592:
                    revert with 'NH{q', 50
                _3354 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[172 len 20])
                staticcall mem[172 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3388]:
                    if 0 >= _2592:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _3354:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _3354:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _3530 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3530))
                    call address(_3530).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3555] == bool(mem[_3555])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _3658 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3658 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_3658]:
                            revert with 'NH{q', 50
                        mem[_3658 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_3658]:
                            revert with 'NH{q', 50
                        mem[_3658 + 64] = mem[140 len 20]
                        mem[_3658 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_3658 + 100] = totalDeposits
                        mem[_3658 + 132] = 0
                        mem[_3658 + 164] = 160
                        mem[_3658 + 260] = mem[_3658]
                        idx = 0
                        s = _3658 + 32
                        t = _3658 + 292
                        while idx < mem[_3658]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3658 + 196] = this.address
                        mem[_3658 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3658 + (32 * mem[_3658]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3977 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3996 = mem[_3977]
                        require mem[_3977] <= test266151307()
                        require _3977 + return_data.size > _3977 + mem[_3977] + 31
                        _4013 = mem[_3977 + mem[_3977]]
                        if mem[_3977 + mem[_3977]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3977 + mem[_3977]]) + 1 < 0 or _3977 + ceil32(return_data.size) + ceil32(32 * mem[_3977 + mem[_3977]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3977 + ceil32(return_data.size) + ceil32(32 * mem[_3977 + mem[_3977]]) + 1
                        mem[_3977 + ceil32(return_data.size)] = _4013
                        require _3996 + (32 * _4013) + 32 <= return_data.size
                        mem[_3977 + ceil32(return_data.size) + 32 len 32 * _4013] = mem[_3977 + _3996 + 32 len 32 * _4013]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _4257 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4257))
                        staticcall address(_4257).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4300 = mem[_4290]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4300
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4300, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    if bool(bool(mem[_3388] < 78)) or bool(bool(mem[_3388] < 32)):
                        if 0 >= _2592:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_3388] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _3354:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_3388] / _3354:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _3606 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_3606))
                        call address(_3606).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3631] == bool(mem[_3631])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _3695 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_3695 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_3695]:
                                revert with 'NH{q', 50
                            mem[_3695 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_3695]:
                                revert with 'NH{q', 50
                            mem[_3695 + 64] = mem[140 len 20]
                            mem[_3695 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_3695 + 100] = totalDeposits
                            mem[_3695 + 132] = 0
                            mem[_3695 + 164] = 160
                            mem[_3695 + 260] = mem[_3695]
                            idx = 0
                            s = _3695 + 32
                            t = _3695 + 292
                            while idx < mem[_3695]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3695 + 196] = this.address
                            mem[_3695 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3695 + (32 * mem[_3695]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3976 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3995 = mem[_3976]
                            require mem[_3976] <= test266151307()
                            require _3976 + return_data.size > _3976 + mem[_3976] + 31
                            _4012 = mem[_3976 + mem[_3976]]
                            if mem[_3976 + mem[_3976]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3976 + mem[_3976]]) + 1 < 0 or _3976 + ceil32(return_data.size) + ceil32(32 * mem[_3976 + mem[_3976]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3976 + ceil32(return_data.size) + ceil32(32 * mem[_3976 + mem[_3976]]) + 1
                            mem[_3976 + ceil32(return_data.size)] = _4012
                            require _3995 + (32 * _4012) + 32 <= return_data.size
                            mem[_3976 + ceil32(return_data.size) + 32 len 32 * _4012] = mem[_3976 + _3995 + 32 len 32 * _4012]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4254 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4254))
                            staticcall address(_4254).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4299 = mem[_4289]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4299
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4299, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    else:
                        s = 10
                        t = 1
                        idx = mem[_3388]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if 0 >= _2592:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _3354:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _3354:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _4066 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_4066))
                        call address(_4066).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4088 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4088] == bool(mem[_4088])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _4145 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4145 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_4145]:
                                revert with 'NH{q', 50
                            mem[_4145 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_4145]:
                                revert with 'NH{q', 50
                            mem[_4145 + 64] = mem[140 len 20]
                            mem[_4145 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4145 + 100] = totalDeposits
                            mem[_4145 + 132] = 0
                            mem[_4145 + 164] = 160
                            mem[_4145 + 260] = mem[_4145]
                            idx = 0
                            s = _4145 + 32
                            t = _4145 + 292
                            while idx < mem[_4145]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4145 + 196] = this.address
                            mem[_4145 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4145 + (32 * mem[_4145]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4288 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4298 = mem[_4288]
                            require mem[_4288] <= test266151307()
                            require _4288 + return_data.size > _4288 + mem[_4288] + 31
                            _4308 = mem[_4288 + mem[_4288]]
                            if mem[_4288 + mem[_4288]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_4288 + mem[_4288]]) + 1 < 0 or _4288 + ceil32(return_data.size) + ceil32(32 * mem[_4288 + mem[_4288]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _4288 + ceil32(return_data.size) + ceil32(32 * mem[_4288 + mem[_4288]]) + 1
                            mem[_4288 + ceil32(return_data.size)] = _4308
                            require _4298 + (32 * _4308) + 32 <= return_data.size
                            mem[_4288 + ceil32(return_data.size) + 32 len 32 * _4308] = mem[_4288 + _4298 + 32 len 32 * _4308]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4378 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4378))
                            staticcall address(_4378).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4394 = mem[_4392]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4394
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4394, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
    else:
        if Mask(112, 0, ext_call.return_data[0]) < cd[68]:
            revert with 0, 'T'
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = 1
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 1, Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _1749 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0
            require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 <= test266151307()
            require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 128
            _1755 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]
            if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 98 > test266151307():
                revert with 'NH{q', 65
            mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], 0 + 97]) + 98
            mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _1755
            require _1749 + (32 * _1755) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _1755] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _1749 + 129 len 32 * _1755]
            if 1 >= _1755:
                revert with 'NH{q', 50
            _2566 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
            if 1 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_2585]:
                if 0 >= _1755:
                    revert with 'NH{q', 50
                if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                    revert with 'NH{q', 17
                if not _2566:
                    revert with 'NH{q', 18
                if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _2566:
                    revert with 0, 'MAX.'
                if 600 > !block.timestamp:
                    revert with 'NH{q', 17
                if 0 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                _2659 = mem[128]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_2659))
                call address(_2659).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2673] == bool(mem[_2673])
                if not ('cd', 100).length:
                    revert with 'NH{q', 50
                if uSDCAddress == mem[140 len 20]:
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = totalDeposits
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                else:
                    _2750 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2750 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2750]:
                        revert with 'NH{q', 50
                    mem[_2750 + 32] = uSDCAddress
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2750]:
                        revert with 'NH{q', 50
                    mem[_2750 + 64] = mem[140 len 20]
                    mem[_2750 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_2750 + 100] = totalDeposits
                    mem[_2750 + 132] = 0
                    mem[_2750 + 164] = 160
                    mem[_2750 + 260] = mem[_2750]
                    idx = 0
                    s = _2750 + 32
                    t = _2750 + 292
                    while idx < mem[_2750]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2750 + 196] = this.address
                    mem[_2750 + 228] = block.timestamp + 600
                    require ext_code.size(stor11)
                    call stor11.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2750 + (32 * mem[_2750]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3387 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3405 = mem[_3387]
                    require mem[_3387] <= test266151307()
                    require _3387 + return_data.size > _3387 + mem[_3387] + 31
                    _3415 = mem[_3387 + mem[_3387]]
                    if mem[_3387 + mem[_3387]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_3387 + mem[_3387]]) + 1 < 0 or _3387 + ceil32(return_data.size) + ceil32(32 * mem[_3387 + mem[_3387]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _3387 + ceil32(return_data.size) + ceil32(32 * mem[_3387 + mem[_3387]]) + 1
                    mem[_3387 + ceil32(return_data.size)] = _3415
                    require _3405 + (32 * _3415) + 32 <= return_data.size
                    mem[_3387 + ceil32(return_data.size) + 32 len 32 * _3415] = mem[_3387 + _3405 + 32 len 32 * _3415]
                    var165001 = _3387 + _3405 + (32 * _3415) + 32
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _3973 = mem[128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3973))
                    staticcall address(_3973).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3991 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4011 = mem[_3991]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4011
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4011, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            else:
                if bool(bool(mem[_2585] < 78)) or bool(bool(mem[_2585] < 32)):
                    if 0 >= _1755:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_2585] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2566:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_2585] / _2566:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _2693 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_2693))
                    call address(_2693).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2709 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2709] == bool(mem[_2709])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _2813 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2813 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_2813]:
                            revert with 'NH{q', 50
                        mem[_2813 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2813]:
                            revert with 'NH{q', 50
                        mem[_2813 + 64] = mem[140 len 20]
                        mem[_2813 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_2813 + 100] = totalDeposits
                        mem[_2813 + 132] = 0
                        mem[_2813 + 164] = 160
                        mem[_2813 + 260] = mem[_2813]
                        idx = 0
                        s = _2813 + 32
                        t = _2813 + 292
                        while idx < mem[_2813]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2813 + 196] = this.address
                        mem[_2813 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2813 + (32 * mem[_2813]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3386 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3404 = mem[_3386]
                        require mem[_3386] <= test266151307()
                        require _3386 + return_data.size > _3386 + mem[_3386] + 31
                        _3414 = mem[_3386 + mem[_3386]]
                        if mem[_3386 + mem[_3386]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3386 + mem[_3386]]) + 1 < 0 or _3386 + ceil32(return_data.size) + ceil32(32 * mem[_3386 + mem[_3386]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3386 + ceil32(return_data.size) + ceil32(32 * mem[_3386 + mem[_3386]]) + 1
                        mem[_3386 + ceil32(return_data.size)] = _3414
                        require _3404 + (32 * _3414) + 32 <= return_data.size
                        mem[_3386 + ceil32(return_data.size) + 32 len 32 * _3414] = mem[_3386 + _3404 + 32 len 32 * _3414]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _3970 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3970))
                        staticcall address(_3970).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3990 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4010 = mem[_3990]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4010
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4010, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    s = 10
                    t = 1
                    idx = mem[_2585]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _1755:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2566:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _2566:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _3455 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3455))
                    call address(_3455).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3493] == bool(mem[_3493])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _3574 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3574 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_3574]:
                            revert with 'NH{q', 50
                        mem[_3574 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_3574]:
                            revert with 'NH{q', 50
                        mem[_3574 + 64] = mem[140 len 20]
                        mem[_3574 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_3574 + 100] = totalDeposits
                        mem[_3574 + 132] = 0
                        mem[_3574 + 164] = 160
                        mem[_3574 + 260] = mem[_3574]
                        idx = 0
                        s = _3574 + 32
                        t = _3574 + 292
                        while idx < mem[_3574]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3574 + 196] = this.address
                        mem[_3574 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3574 + (32 * mem[_3574]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3989 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4009 = mem[_3989]
                        require mem[_3989] <= test266151307()
                        require _3989 + return_data.size > _3989 + mem[_3989] + 31
                        _4025 = mem[_3989 + mem[_3989]]
                        if mem[_3989 + mem[_3989]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3989 + mem[_3989]]) + 1 < 0 or _3989 + ceil32(return_data.size) + ceil32(32 * mem[_3989 + mem[_3989]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3989 + ceil32(return_data.size) + ceil32(32 * mem[_3989 + mem[_3989]]) + 1
                        mem[_3989 + ceil32(return_data.size)] = _4025
                        require _4009 + (32 * _4025) + 32 <= return_data.size
                        mem[_3989 + ceil32(return_data.size) + 32 len 32 * _4025] = mem[_3989 + _4009 + 32 len 32 * _4025]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _4283 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4283))
                        staticcall address(_4283).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4307 = mem[_4297]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4307
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4307, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        else:
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if 10^ext_call.return_data[0] > -1:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = 10^ext_call.return_data[0]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^ext_call.return_data[0], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _1748 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32
                require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 128
                _1754 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 98 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, 10^ext_call.return_data[0]) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _1754
                require _1748 + (32 * _1754) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _1754] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _1748 + 129 len 32 * _1754]
                if 1 >= _1754:
                    revert with 'NH{q', 50
                _2564 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[172 len 20])
                staticcall mem[172 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2584]:
                    if 0 >= _1754:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _2564:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _2564:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _2656 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_2656))
                    call address(_2656).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2671] == bool(mem[_2671])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _2744 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_2744 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_2744]:
                            revert with 'NH{q', 50
                        mem[_2744 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2744]:
                            revert with 'NH{q', 50
                        mem[_2744 + 64] = mem[140 len 20]
                        mem[_2744 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_2744 + 100] = totalDeposits
                        mem[_2744 + 132] = 0
                        mem[_2744 + 164] = 160
                        mem[_2744 + 260] = mem[_2744]
                        idx = 0
                        s = _2744 + 32
                        t = _2744 + 292
                        while idx < mem[_2744]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2744 + 196] = this.address
                        mem[_2744 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2744 + (32 * mem[_2744]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3385 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3402 = mem[_3385]
                        require mem[_3385] <= test266151307()
                        require _3385 + return_data.size > _3385 + mem[_3385] + 31
                        _3413 = mem[_3385 + mem[_3385]]
                        if mem[_3385 + mem[_3385]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3385 + mem[_3385]]) + 1 < 0 or _3385 + ceil32(return_data.size) + ceil32(32 * mem[_3385 + mem[_3385]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3385 + ceil32(return_data.size) + ceil32(32 * mem[_3385 + mem[_3385]]) + 1
                        mem[_3385 + ceil32(return_data.size)] = _3413
                        require _3402 + (32 * _3413) + 32 <= return_data.size
                        mem[_3385 + ceil32(return_data.size) + 32 len 32 * _3413] = mem[_3385 + _3402 + 32 len 32 * _3413]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _3965 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3965))
                        staticcall address(_3965).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4008 = mem[_3988]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4008
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4008, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    if bool(bool(mem[_2584] < 78)) or bool(bool(mem[_2584] < 32)):
                        if 0 >= _1754:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_2584] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _2564:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_2584] / _2564:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _2690 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_2690))
                        call address(_2690).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2707] == bool(mem[_2707])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _2809 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_2809 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_2809]:
                                revert with 'NH{q', 50
                            mem[_2809 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_2809]:
                                revert with 'NH{q', 50
                            mem[_2809 + 64] = mem[140 len 20]
                            mem[_2809 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_2809 + 100] = totalDeposits
                            mem[_2809 + 132] = 0
                            mem[_2809 + 164] = 160
                            mem[_2809 + 260] = mem[_2809]
                            idx = 0
                            s = _2809 + 32
                            t = _2809 + 292
                            while idx < mem[_2809]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2809 + 196] = this.address
                            mem[_2809 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2809 + (32 * mem[_2809]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3384 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3401 = mem[_3384]
                            require mem[_3384] <= test266151307()
                            require _3384 + return_data.size > _3384 + mem[_3384] + 31
                            _3412 = mem[_3384 + mem[_3384]]
                            if mem[_3384 + mem[_3384]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3384 + mem[_3384]]) + 1 < 0 or _3384 + ceil32(return_data.size) + ceil32(32 * mem[_3384 + mem[_3384]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3384 + ceil32(return_data.size) + ceil32(32 * mem[_3384 + mem[_3384]]) + 1
                            mem[_3384 + ceil32(return_data.size)] = _3412
                            require _3401 + (32 * _3412) + 32 <= return_data.size
                            mem[_3384 + ceil32(return_data.size) + 32 len 32 * _3412] = mem[_3384 + _3401 + 32 len 32 * _3412]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _3962 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3962))
                            staticcall address(_3962).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3987 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4007 = mem[_3987]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4007
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4007, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    else:
                        s = 10
                        t = 1
                        idx = mem[_2584]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if 0 >= _1754:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _2564:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _2564:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _3450 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_3450))
                        call address(_3450).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3486] == bool(mem[_3486])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _3569 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_3569 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_3569]:
                                revert with 'NH{q', 50
                            mem[_3569 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_3569]:
                                revert with 'NH{q', 50
                            mem[_3569 + 64] = mem[140 len 20]
                            mem[_3569 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_3569 + 100] = totalDeposits
                            mem[_3569 + 132] = 0
                            mem[_3569 + 164] = 160
                            mem[_3569 + 260] = mem[_3569]
                            idx = 0
                            s = _3569 + 32
                            t = _3569 + 292
                            while idx < mem[_3569]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3569 + 196] = this.address
                            mem[_3569 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3569 + (32 * mem[_3569]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3986 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4006 = mem[_3986]
                            require mem[_3986] <= test266151307()
                            require _3986 + return_data.size > _3986 + mem[_3986] + 31
                            _4022 = mem[_3986 + mem[_3986]]
                            if mem[_3986 + mem[_3986]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3986 + mem[_3986]]) + 1 < 0 or _3986 + ceil32(return_data.size) + ceil32(32 * mem[_3986 + mem[_3986]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3986 + ceil32(return_data.size) + ceil32(32 * mem[_3986 + mem[_3986]]) + 1
                            mem[_3986 + ceil32(return_data.size)] = _4022
                            require _4006 + (32 * _4022) + 32 <= return_data.size
                            mem[_3986 + ceil32(return_data.size) + 32 len 32 * _4022] = mem[_3986 + _4006 + 32 len 32 * _4022]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4278 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4278))
                            staticcall address(_4278).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4306 = mem[_4296]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4306
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4306, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if s * t > -1:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 101] = s * t
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 133] = 64
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 165] = ('cd', 100).length
                idx = 0
                u = 128
                v = ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197
                while idx < ('cd', 100).length:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s * t, Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _2587 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32
                require mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 128
                _2593 = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 98 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, s * t) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 97] = _2593
                require _2587 + (32 * _2593) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129 len 32 * _2593] = mem[ceil32(32 * ('cd', 100).length) + (7 * ceil32(return_data.size)) + _2587 + 129 len 32 * _2593]
                if 1 >= _2593:
                    revert with 'NH{q', 50
                _3364 = mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require ext_code.size(mem[172 len 20])
                staticcall mem[172 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3391]:
                    if 0 >= _2593:
                        revert with 'NH{q', 50
                    if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _3364:
                        revert with 'NH{q', 18
                    if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] / _3364:
                        revert with 0, 'MAX.'
                    if 600 > !block.timestamp:
                        revert with 'NH{q', 17
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _3539 = mem[128]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_3539))
                    call address(_3539).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3567] == bool(mem[_3567])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    if uSDCAddress == mem[140 len 20]:
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = totalDeposits
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 100).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < ('cd', 100).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                    else:
                        _3664 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3664 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_3664]:
                            revert with 'NH{q', 50
                        mem[_3664 + 32] = uSDCAddress
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        if 1 >= mem[_3664]:
                            revert with 'NH{q', 50
                        mem[_3664 + 64] = mem[140 len 20]
                        mem[_3664 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_3664 + 100] = totalDeposits
                        mem[_3664 + 132] = 0
                        mem[_3664 + 164] = 160
                        mem[_3664 + 260] = mem[_3664]
                        idx = 0
                        s = _3664 + 32
                        t = _3664 + 292
                        while idx < mem[_3664]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3664 + 196] = this.address
                        mem[_3664 + 228] = block.timestamp + 600
                        require ext_code.size(stor11)
                        call stor11.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3664 + (32 * mem[_3664]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3985 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4005 = mem[_3985]
                        require mem[_3985] <= test266151307()
                        require _3985 + return_data.size > _3985 + mem[_3985] + 31
                        _4021 = mem[_3985 + mem[_3985]]
                        if mem[_3985 + mem[_3985]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[_3985 + mem[_3985]]) + 1 < 0 or _3985 + ceil32(return_data.size) + ceil32(32 * mem[_3985 + mem[_3985]]) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _3985 + ceil32(return_data.size) + ceil32(32 * mem[_3985 + mem[_3985]]) + 1
                        mem[_3985 + ceil32(return_data.size)] = _4021
                        require _4005 + (32 * _4021) + 32 <= return_data.size
                        mem[_3985 + ceil32(return_data.size) + 32 len 32 * _4021] = mem[_3985 + _4005 + 32 len 32 * _4021]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _4275 = mem[128]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4275))
                        staticcall address(_4275).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4305 = mem[_4295]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4305
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4305, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    if bool(bool(mem[_3391] < 78)) or bool(bool(mem[_3391] < 32)):
                        if 0 >= _2593:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and 10^mem[_3391] > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _3364:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * 10^mem[_3391] / _3364:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _3611 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_3611))
                        call address(_3611).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3635] == bool(mem[_3635])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _3701 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_3701 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_3701]:
                                revert with 'NH{q', 50
                            mem[_3701 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_3701]:
                                revert with 'NH{q', 50
                            mem[_3701 + 64] = mem[140 len 20]
                            mem[_3701 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_3701 + 100] = totalDeposits
                            mem[_3701 + 132] = 0
                            mem[_3701 + 164] = 160
                            mem[_3701 + 260] = mem[_3701]
                            idx = 0
                            s = _3701 + 32
                            t = _3701 + 292
                            while idx < mem[_3701]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3701 + 196] = this.address
                            mem[_3701 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3701 + (32 * mem[_3701]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3984 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4004 = mem[_3984]
                            require mem[_3984] <= test266151307()
                            require _3984 + return_data.size > _3984 + mem[_3984] + 31
                            _4020 = mem[_3984 + mem[_3984]]
                            if mem[_3984 + mem[_3984]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_3984 + mem[_3984]]) + 1 < 0 or _3984 + ceil32(return_data.size) + ceil32(32 * mem[_3984 + mem[_3984]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3984 + ceil32(return_data.size) + ceil32(32 * mem[_3984 + mem[_3984]]) + 1
                            mem[_3984 + ceil32(return_data.size)] = _4020
                            require _4004 + (32 * _4020) + 32 <= return_data.size
                            mem[_3984 + ceil32(return_data.size) + 32 len 32 * _4020] = mem[_3984 + _4004 + 32 len 32 * _4020]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4272 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4272))
                            staticcall address(_4272).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4304 = mem[_4294]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4304
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4304, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    else:
                        s = 10
                        t = 1
                        idx = mem[_3391]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if 0 >= _2593:
                            revert with 'NH{q', 50
                        if mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] and s * t > -1 / mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129]:
                            revert with 'NH{q', 17
                        if not _3364:
                            revert with 'NH{q', 18
                        if cd[36] < mem[ceil32(32 * ('cd', 100).length) + (8 * ceil32(return_data.size)) + 129] * s * t / _3364:
                            revert with 0, 'MAX.'
                        if 600 > !block.timestamp:
                            revert with 'NH{q', 17
                        if 0 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        _4073 = mem[128]
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(_4073))
                        call address(_4073).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4101] == bool(mem[_4101])
                        if not ('cd', 100).length:
                            revert with 'NH{q', 50
                        if uSDCAddress == mem[140 len 20]:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = totalDeposits
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 100).length
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args totalDeposits, 0, 160, address(this.address), block.timestamp + 600, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
                        else:
                            _4152 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4152 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_4152]:
                                revert with 'NH{q', 50
                            mem[_4152 + 32] = uSDCAddress
                            if 0 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            if 1 >= mem[_4152]:
                                revert with 'NH{q', 50
                            mem[_4152 + 64] = mem[140 len 20]
                            mem[_4152 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_4152 + 100] = totalDeposits
                            mem[_4152 + 132] = 0
                            mem[_4152 + 164] = 160
                            mem[_4152 + 260] = mem[_4152]
                            idx = 0
                            s = _4152 + 32
                            t = _4152 + 292
                            while idx < mem[_4152]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4152 + 196] = this.address
                            mem[_4152 + 228] = block.timestamp + 600
                            require ext_code.size(stor11)
                            call stor11.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4152 + (32 * mem[_4152]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4293 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4303 = mem[_4293]
                            require mem[_4293] <= test266151307()
                            require _4293 + return_data.size > _4293 + mem[_4293] + 31
                            _4313 = mem[_4293 + mem[_4293]]
                            if mem[_4293 + mem[_4293]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_4293 + mem[_4293]]) + 1 < 0 or _4293 + ceil32(return_data.size) + ceil32(32 * mem[_4293 + mem[_4293]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _4293 + ceil32(return_data.size) + ceil32(32 * mem[_4293 + mem[_4293]]) + 1
                            mem[_4293 + ceil32(return_data.size)] = _4313
                            require _4303 + (32 * _4313) + 32 <= return_data.size
                            mem[_4293 + ceil32(return_data.size) + 32 len 32 * _4313] = mem[_4293 + _4303 + 32 len 32 * _4313]
                            var187001 = _4293 + _4303 + (32 * _4313) + 32
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _4385 = mem[128]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4385))
                            staticcall address(_4385).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4393 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4395 = mem[_4393]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4395
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 196
                            while idx < mem[96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4395, 0, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
