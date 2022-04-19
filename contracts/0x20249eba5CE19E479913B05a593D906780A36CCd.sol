contract main {




// =====================  Runtime code  =====================


#
#  - sub_42a86bb7(?)
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
mapping of struct info;
array of struct stor13;
uint256 totalDeposits;
address uSDCAddress;
address sub_8b8de86cAddress;

function getDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    return info[address(msg.sender)].field_0, info[address(msg.sender)].field_256
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

function sub_c416ee2d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'USDC address cannot be 0'
    uSDCAddress = arg1
    stor10 = uSDCAddress
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
    owner = msg.sender
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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

function sub_6afde6ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not address(arg1):
        revert with 0, 'QS address cannot be 0'
    sub_8b8de86cAddress = address(arg1)
    require ext_code.size(stor10)
    call stor10.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8b8de86cAddress, -1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
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
        stor13[stor13.length].field_0 = msg.sender
    if info[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += arg1
    info[address(msg.sender)].field_256 = msg.sender
    if totalDeposits > -arg1 - 1:
        revert with 'NH{q', 17
    totalDeposits += arg1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
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
    if info[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    info[address(arg1)].field_0 += arg2
    info[address(arg1)].field_256 = arg1
    if totalDeposits > -arg2 - 1:
        revert with 'NH{q', 17
    totalDeposits += arg2
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
    require arg1 == arg1
    if info[address(msg.sender)].field_256:
        require ext_code.size(stor10)
        if info[address(msg.sender)].field_0 >= arg1:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[address(msg.sender)].field_0 < arg1:
                revert with 'NH{q', 17
            info[address(msg.sender)].field_0 -= arg1
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < arg1:
                revert with 'NH{q', 17
            totalDeposits -= arg1
        else:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, info[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[address(msg.sender)].field_0 < info[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            info[address(msg.sender)].field_0 = 0
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < info[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            totalDeposits -= info[address(msg.sender)].field_0
}



}
