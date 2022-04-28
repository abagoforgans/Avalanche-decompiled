contract main {




// =====================  Runtime code  =====================


#
#  - sub_28f96474(?)
#
array of struct stor0;
array of address stor1;
uint256 sub_68bb600b;
address sub_7d3cdd60Address;
uint256 sub_cb6adbe9;
address sub_9ab8c78fAddress;
uint256 sub_8796f547;
address sub_62a251e3Address;
uint256 sub_5f0b2083;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
array of struct stor14;
mapping of struct info;
array of struct stor16;
uint256 totalDeposits;
address uSDCAddress;
address sub_8b8de86cAddress;

function getDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor16.length:
        revert with 0, 'Index exceed no of deposits'
    return uint256(info[stor16[arg1].field_0].field_0), info[stor16[arg1].field_0].field_256
}

function getTotalDeposits() payable {
    return totalDeposits
}

function getInfo() payable {
    return uint256(info[address(msg.sender)].field_0), info[address(msg.sender)].field_256
}

function sub_5dfb849b(?) payable {
    return stor1.length
}

function sub_5f0b2083(?) payable {
    return sub_5f0b2083
}

function sub_62a251e3(?) payable {
    return sub_62a251e3Address
}

function sub_68bb600b(?) payable {
    return sub_68bb600b
}

function sub_7d3cdd60(?) payable {
    return sub_7d3cdd60Address
}

function sub_8796f547(?) payable {
    return sub_8796f547
}

function sub_8b8de86c(?) payable {
    return sub_8b8de86cAddress
}

function sub_9ab8c78f(?) payable {
    return sub_9ab8c78fAddress
}

function sub_a5be5f7a(?) payable {
    return stor14.length
}

function getUSDCAddress() payable {
    return uSDCAddress
}

function sub_cb6adbe9(?) payable {
    return sub_cb6adbe9
}

function _fallback() payable {
    revert
}

function sub_a35438c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < arg1:
        revert with 0, 'BlockNo: Trading not started yet'
}

function sub_29b701ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Block Time: Trading not started yet'
}

function sub_1ba8f8cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.number < arg1:
        revert with 0, 'BlockNo: Trading not started yet'
    if block.timestamp < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Block Time: Trading not started yet'
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor1.length = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_28c02b76(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_9ab8c78fAddress = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_d41e4080(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_62a251e3Address = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_f6f8399e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_7d3cdd60Address = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_c416ee2d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor9 = arg1
        stor10 = arg2
        stor11 = arg3
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_6d009f5d(?) payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor14.length = 0
        idx = sha3(14)
        while sha3(14) + (2 * stor14.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 2
            continue 
    revert with 0, 'Ownable: caller is not the owner'
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'USDC address cannot be 0'
        uSDCAddress = arg1
        stor12 = uSDCAddress
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_6afde6ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not address(arg1):
            revert with 0, 'QS address cannot be 0'
        sub_8b8de86cAddress = address(arg1)
        stor13 = sub_8b8de86cAddress
    revert with 0, 'Ownable: caller is not the owner'
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_68bb600b = arg1
        sub_cb6adbe9 = arg2
        sub_8796f547 = arg3
        sub_5f0b2083 = arg4
    revert with 0, 'Ownable: caller is not the owner'
}

function getRouters() payable {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    s = 128
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor14[idx].field_0
        mem[_11 + 32] = stor14[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is already the owner'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function addRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'router address cannot be 0'
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        stor14.length++
        stor14[stor14.length].field_0 = arg1
        stor14[stor14.length].field_256 = mem[140 len 20]
    revert with 0, 'Ownable: caller is not the owner'
}

function owner() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor12)
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    while idx < stor16.length:
        mem[0] = 16
        if idx == -1:
            revert with 'NH{q', 17
        if stor16[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor16.length++
        stor16[stor16.length].field_0 = msg.sender
    if uint256(info[address(msg.sender)].field_0) > -arg1 - 1:
        revert with 'NH{q', 17
    uint256(info[address(msg.sender)].field_0) += arg1
    info[address(msg.sender)].field_256 = msg.sender
    if totalDeposits > -arg1 - 1:
        revert with 'NH{q', 17
    totalDeposits += arg1
}

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
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
            args stor1.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'Ownable: caller is not the owner'
}

function getUsers() payable {
    mem[64] = (32 * stor16.length) + 128
    mem[96] = stor16.length
    if not stor16.length:
        mem[(32 * stor16.length) + 128] = 32
        mem[(32 * stor16.length) + 160] = stor16.length
        idx = 0
        s = 128
        t = (32 * stor16.length) + 192
        while idx < stor16.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor16.length) + 128
           len (96 * stor16.length) + 64
    mem[128] = address(stor16.field_0)
    idx = 128
    s = 0
    while (32 * stor16.length) + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor16.length) + 128] = 32
    mem[(32 * stor16.length) + 160] = stor16.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor16.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor16.length) + -mem[64] + 192
}

function sub_9ba7ef5f(?) payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args stor1.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        totalDeposits = 0
        idx = 0
        while idx < stor16.length:
            mem[0] = stor16[idx].field_0
            mem[32] = 15
            uint256(info[stor16[idx].field_0].field_0) = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_c5aaa1ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if info[address(msg.sender)].field_256:
        require ext_code.size(stor12)
        if uint256(info[address(msg.sender)].field_0) >= arg1:
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint256(info[address(msg.sender)].field_0) < arg1:
                revert with 'NH{q', 17
            uint256(info[address(msg.sender)].field_0) -= arg1
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < arg1:
                revert with 'NH{q', 17
            totalDeposits -= arg1
        else:
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, uint256(info[address(msg.sender)].field_0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if uint256(info[address(msg.sender)].field_0) < uint256(info[address(msg.sender)].field_0):
                revert with 'NH{q', 17
            uint256(info[address(msg.sender)].field_0) = 0
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < uint256(info[address(msg.sender)].field_0):
                revert with 'NH{q', 17
            totalDeposits -= uint256(info[address(msg.sender)].field_0)
}

function addRouters(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            s = 0
            while s < stor0.length:
                mem[0] = 0
                if stor0[s].field_0 != msg.sender:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'router address cannot be 0'
                _48 = mem[64]
                mem[64] = mem[64] + 64
                mem[_48] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_53] == mem[_53 + 12 len 20]
                mem[_48 + 32] = mem[_53 + 12 len 20]
                stor14.length++
                mem[0] = 14
                stor14[stor14.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
                stor14[stor14.length].field_256 = mem[_48 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'Ownable: caller is not the owner'
}

function getContractInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[(2 * ceil32(return_data.size)) + _9 + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[mem[64] + _9 + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
}

function sub_832d1941(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 192
    mem[96 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < ('cd', 68).length:
        if cd[36] >= stor14.length:
            revert with 'NH{q', 50
        mem[0] = 14
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor14[cd[36]].field_256)
        staticcall stor14[cd[36]].field_256.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require mem[_55] == mem[_55 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _60 = mem[_59]
        require mem[_59] == mem[_59]
        if not mem[_59]:
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[100] + 36)] and 1 > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 'NH{q', 17
            if cd[36] >= stor14.length:
                revert with 'NH{q', 50
            mem[0] = 14
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor14[cd[36]].field_256)
            staticcall stor14[cd[36]].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 12 len 20]
            if not mem[_68 + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_56))
            staticcall address(_56).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _79 = mem[_78]
            require mem[_78] == mem[_78 + 18 len 14]
            _87 = mem[_78 + 32]
            require mem[_78 + 32] == mem[_78 + 50 len 14]
            require mem[_78 + 64] == mem[_78 + 92 len 4]
            if mem[_78 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                if mem[_78 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                    _94 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_94] = 0
                    mem[_94 + 32] = idx
                    mem[_94 + 64] = Mask(112, 0, _79)
                    _95 = mem[64]
                    idx = 0
                    s = _94
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _95 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_56))
                staticcall address(_56).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_106] == mem[_106 + 12 len 20]
                if mem[_106 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _128 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_128] = 0
                    mem[_128 + 32] = idx
                    mem[_128 + 64] = Mask(112, 0, _79)
                    _132 = mem[64]
                    idx = 0
                    s = _128
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _132 + -mem[64] + 96
                _129 = mem[64]
                mem[64] = mem[64] + 96
                mem[_129] = 1
                mem[_129 + 32] = idx
                mem[_129 + 64] = Mask(112, 0, _87)
                _133 = mem[64]
                idx = 0
                s = _129
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _133 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105 + 12 len 20]
            if mem[_105 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _126 = mem[64]
                mem[64] = mem[64] + 96
                mem[_126] = 1
                mem[_126 + 32] = idx
                mem[_126 + 64] = Mask(112, 0, _79)
                _131 = mem[64]
                idx = 0
                s = _126
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _131 + -mem[64] + 96
            if Mask(112, 0, _87) < cd[((32 * idx) + cd[100] + 36)]:
                _130 = mem[64]
                mem[64] = mem[64] + 96
                mem[_130] = 0
                mem[_130 + 32] = idx
                mem[_130 + 64] = Mask(112, 0, _79)
                _134 = mem[64]
                idx = 0
                s = _130
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _134 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _160 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_160] == mem[_160 + 12 len 20]
            if mem[_160 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _174 = mem[64]
                mem[64] = mem[64] + 96
                mem[_174] = 0
                mem[_174 + 32] = idx
                mem[_174 + 64] = Mask(112, 0, _79)
                _176 = mem[64]
                idx = 0
                s = _174
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _176 + -mem[64] + 96
            _175 = mem[64]
            mem[64] = mem[64] + 96
            mem[_175] = 1
            mem[_175 + 32] = idx
            mem[_175 + 64] = Mask(112, 0, _87)
            _177 = mem[64]
            idx = 0
            s = _175
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _177 + -mem[64] + 96
        if bool(bool(mem[_59] < 78)) or bool(bool(mem[_59] < 32)):
            if 10^mem[_59] > -1:
                revert with 'NH{q', 17
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[100] + 36)] and 10^mem[_59] > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 'NH{q', 17
            if cd[36] >= stor14.length:
                revert with 'NH{q', 50
            mem[0] = 14
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor14[cd[36]].field_256)
            staticcall stor14[cd[36]].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == mem[_71 + 12 len 20]
            if not mem[_71 + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_56))
            staticcall address(_56).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _85 = mem[_82]
            require mem[_82] == mem[_82 + 18 len 14]
            _89 = mem[_82 + 32]
            require mem[_82 + 32] == mem[_82 + 50 len 14]
            require mem[_82 + 64] == mem[_82 + 92 len 4]
            if mem[_82 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                if mem[_82 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                    _96 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_96] = 0
                    mem[_96 + 32] = idx
                    mem[_96 + 64] = Mask(112, 0, _85)
                    _97 = mem[64]
                    idx = 0
                    s = _96
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _97 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_56))
                staticcall address(_56).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_117] == mem[_117 + 12 len 20]
                if mem[_117 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _136 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_136] = 0
                    mem[_136 + 32] = idx
                    mem[_136 + 64] = Mask(112, 0, _85)
                    _141 = mem[64]
                    idx = 0
                    s = _136
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _141 + -mem[64] + 96
                _137 = mem[64]
                mem[64] = mem[64] + 96
                mem[_137] = 1
                mem[_137 + 32] = idx
                mem[_137 + 64] = Mask(112, 0, _89)
                _142 = mem[64]
                idx = 0
                s = _137
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _142 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_114] == mem[_114 + 12 len 20]
            if mem[_114 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _135 = mem[64]
                mem[64] = mem[64] + 96
                mem[_135] = 1
                mem[_135 + 32] = idx
                mem[_135 + 64] = Mask(112, 0, _85)
                _139 = mem[64]
                idx = 0
                s = _135
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _139 + -mem[64] + 96
            if Mask(112, 0, _89) < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                _138 = mem[64]
                mem[64] = mem[64] + 96
                mem[_138] = 0
                mem[_138 + 32] = idx
                mem[_138 + 64] = Mask(112, 0, _85)
                _143 = mem[64]
                idx = 0
                s = _138
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _143 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_171] == mem[_171 + 12 len 20]
            if mem[_171 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _178 = mem[64]
                mem[64] = mem[64] + 96
                mem[_178] = 0
                mem[_178 + 32] = idx
                mem[_178 + 64] = Mask(112, 0, _85)
                _180 = mem[64]
                idx = 0
                s = _178
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _180 + -mem[64] + 96
            _179 = mem[64]
            mem[64] = mem[64] + 96
            mem[_179] = 1
            mem[_179 + 32] = idx
            mem[_179 + 64] = Mask(112, 0, _89)
            _181 = mem[64]
            idx = 0
            s = _179
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _181 + -mem[64] + 96
        t = 10
        u = 1
        s = mem[_59]
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = u * t
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 'NH{q', 17
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[100] + 36)] and u * t > -1 / cd[((32 * idx) + cd[100] + 36)]:
            revert with 'NH{q', 17
        if cd[36] >= stor14.length:
            revert with 'NH{q', 50
        mem[0] = 14
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor14[cd[36]].field_256)
        staticcall stor14[cd[36]].field_256.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 12 len 20]
        if not mem[_188 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(_56))
        staticcall address(_56).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _193 = mem[_192]
        require mem[_192] == mem[_192 + 18 len 14]
        _194 = mem[_192 + 32]
        require mem[_192 + 32] == mem[_192 + 50 len 14]
        require mem[_192 + 64] == mem[_192 + 92 len 4]
        if mem[_192 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * u * t:
            if mem[_192 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * u * t:
                _196 = mem[64]
                mem[64] = mem[64] + 96
                mem[_196] = 0
                mem[_196 + 32] = idx
                mem[_196 + 64] = Mask(112, 0, _193)
                _197 = mem[64]
                idx = 0
                s = _196
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _197 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == mem[_204 + 12 len 20]
            if mem[_204 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _208 = mem[64]
                mem[64] = mem[64] + 96
                mem[_208] = 0
                mem[_208 + 32] = idx
                mem[_208 + 64] = Mask(112, 0, _193)
                _212 = mem[64]
                idx = 0
                s = _208
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _212 + -mem[64] + 96
            _209 = mem[64]
            mem[64] = mem[64] + 96
            mem[_209] = 1
            mem[_209 + 32] = idx
            mem[_209 + 64] = Mask(112, 0, _194)
            _213 = mem[64]
            idx = 0
            s = _209
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _213 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_56))
        staticcall address(_56).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == mem[_203 + 12 len 20]
        if mem[_203 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
            _207 = mem[64]
            mem[64] = mem[64] + 96
            mem[_207] = 1
            mem[_207 + 32] = idx
            mem[_207 + 64] = Mask(112, 0, _193)
            _211 = mem[64]
            idx = 0
            s = _207
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _211 + -mem[64] + 96
        if Mask(112, 0, _194) < cd[((32 * idx) + cd[100] + 36)] * u * t:
            _210 = mem[64]
            mem[64] = mem[64] + 96
            mem[_210] = 0
            mem[_210 + 32] = idx
            mem[_210 + 64] = Mask(112, 0, _193)
            _214 = mem[64]
            idx = 0
            s = _210
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _214 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_56))
        staticcall address(_56).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_221] == mem[_221 + 12 len 20]
        if mem[_221 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
            _223 = mem[64]
            mem[64] = mem[64] + 96
            mem[_223] = 0
            mem[_223 + 32] = idx
            mem[_223 + 64] = Mask(112, 0, _193)
            _225 = mem[64]
            idx = 0
            s = _223
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _225 + -mem[64] + 96
        _224 = mem[64]
        mem[64] = mem[64] + 96
        mem[_224] = 1
        mem[_224 + 32] = idx
        mem[_224 + 64] = Mask(112, 0, _194)
        _226 = mem[64]
        idx = 0
        s = _224
        t = mem[64]
        while idx < 3:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _226 + -mem[64] + 96
    return 0
}

function sub_2e572faf(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 256
    mem[96 len 160] = call.data[calldata.size len 160]
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _138 = mem[64]
            mem[64] = mem[64] + 96
            mem[_138 len 96] = call.data[calldata.size len 96]
            t = 0
            while t < ('cd', 100).length:
                if cd[((32 * idx) + cd[36] + 36)] >= stor14.length:
                    revert with 'NH{q', 50
                mem[0] = 14
                if t >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(stor14[cd[((32 * idx) + cd[36] + 36)]].field_256)
                staticcall stor14[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _235 = mem[_234]
                require mem[_234] == mem[_234 + 12 len 20]
                if t >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                staticcall address(cd[((32 * t) + cd[100] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _239 = mem[_238]
                require mem[_238] == mem[_238]
                if not mem[_238]:
                    if t >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    if cd[((32 * t) + cd[68] + 36)] and 1 > -1 / cd[((32 * t) + cd[68] + 36)]:
                        revert with 'NH{q', 17
                    if cd[((32 * idx) + cd[36] + 36)] >= stor14.length:
                        revert with 'NH{q', 50
                    mem[0] = 14
                    if t >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                    require ext_code.size(stor14[cd[((32 * idx) + cd[36] + 36)]].field_256)
                    staticcall stor14[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_247] == mem[_247 + 12 len 20]
                    if not mem[_247 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    require ext_code.size(address(_235))
                    staticcall address(_235).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _258 = mem[_257]
                    require mem[_257] == mem[_257 + 18 len 14]
                    _266 = mem[_257 + 32]
                    require mem[_257 + 32] == mem[_257 + 50 len 14]
                    require mem[_257 + 64] == mem[_257 + 92 len 4]
                    if mem[_257 + 18 len 14] < cd[((32 * t) + cd[68] + 36)]:
                        if mem[_257 + 50 len 14] < cd[((32 * t) + cd[68] + 36)]:
                            _273 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_273] = 0
                            mem[_273 + 32] = t
                            mem[_273 + 64] = Mask(112, 0, _258)
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_235))
                        staticcall address(_235).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_293] == mem[_293 + 12 len 20]
                        if mem[_293 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                            _319 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_319] = 0
                            mem[_319 + 32] = t
                            mem[_319 + 64] = Mask(112, 0, _258)
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        _320 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_320] = 1
                        mem[_320 + 32] = t
                        mem[_320 + 64] = Mask(112, 0, _266)
                        _330 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_330] = 1
                        mem[_330 + 32] = s
                        mem[_330 + 64] = t
                        mem[_330 + 96] = idx
                        mem[_330 + 128] = Mask(112, 0, _266)
                        idx = 0
                        s = _330
                        t = mem[64]
                        while idx < 5:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_235))
                        staticcall address(_235).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_289] == mem[_289 + 12 len 20]
                        if mem[_289 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                            _316 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_316] = 1
                            mem[_316 + 32] = t
                            mem[_316 + 64] = Mask(112, 0, _258)
                            _323 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_323] = 1
                            mem[_323 + 32] = s
                            mem[_323 + 64] = t
                            mem[_323 + 96] = idx
                            mem[_323 + 128] = Mask(112, 0, _258)
                            idx = 0
                            s = _323
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if Mask(112, 0, _266) < cd[((32 * t) + cd[68] + 36)]:
                                _321 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_321] = 0
                                mem[_321 + 32] = t
                                mem[_321 + 64] = Mask(112, 0, _258)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _377 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_377] == mem[_377 + 12 len 20]
                            if mem[_377 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _395 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_395] = 0
                                mem[_395 + 32] = t
                                mem[_395 + 64] = Mask(112, 0, _258)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _396 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_396] = 1
                            mem[_396 + 32] = t
                            mem[_396 + 64] = Mask(112, 0, _266)
                            _400 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_400] = 1
                            mem[_400 + 32] = s
                            mem[_400 + 64] = t
                            mem[_400 + 96] = idx
                            mem[_400 + 128] = Mask(112, 0, _266)
                            idx = 0
                            s = _400
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if bool(bool(mem[_238] < 78)) or bool(bool(mem[_238] < 32)):
                        if 10^mem[_238] > -1:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        if cd[((32 * t) + cd[68] + 36)] and 10^mem[_238] > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 'NH{q', 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor14.length:
                            revert with 'NH{q', 50
                        mem[0] = 14
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor14[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor14[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_250] == mem[_250 + 12 len 20]
                        if not mem[_250 + 12 len 20]:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_235))
                        staticcall address(_235).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _264 = mem[_261]
                        require mem[_261] == mem[_261 + 18 len 14]
                        _268 = mem[_261 + 32]
                        require mem[_261 + 32] == mem[_261 + 50 len 14]
                        require mem[_261 + 64] == mem[_261 + 92 len 4]
                        if mem[_261 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                            if mem[_261 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                                _277 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_277] = 0
                                mem[_277 + 32] = t
                                mem[_277 + 64] = Mask(112, 0, _264)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_307] == mem[_307 + 12 len 20]
                            if mem[_307 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _336 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_336] = 0
                                mem[_336 + 32] = t
                                mem[_336 + 64] = Mask(112, 0, _264)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _337 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_337] = 1
                            mem[_337 + 32] = t
                            mem[_337 + 64] = Mask(112, 0, _268)
                            _357 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_357] = 1
                            mem[_357 + 32] = s
                            mem[_357 + 64] = t
                            mem[_357 + 96] = idx
                            mem[_357 + 128] = Mask(112, 0, _268)
                            idx = 0
                            s = _357
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_303] == mem[_303 + 12 len 20]
                            if mem[_303 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _328 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_328] = 1
                                mem[_328 + 32] = t
                                mem[_328 + 64] = Mask(112, 0, _264)
                                _345 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_345] = 1
                                mem[_345 + 32] = s
                                mem[_345 + 64] = t
                                mem[_345 + 96] = idx
                                mem[_345 + 128] = Mask(112, 0, _264)
                                idx = 0
                                s = _345
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _268) < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                                    _338 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_338] = 0
                                    mem[_338 + 32] = t
                                    mem[_338 + 64] = Mask(112, 0, _264)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_235))
                                staticcall address(_235).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_388] == mem[_388 + 12 len 20]
                                if mem[_388 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _403 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_403] = 0
                                    mem[_403 + 32] = t
                                    mem[_403 + 64] = Mask(112, 0, _264)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                _404 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_404] = 1
                                mem[_404 + 32] = t
                                mem[_404 + 64] = Mask(112, 0, _268)
                                _412 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_412] = 1
                                mem[_412 + 32] = s
                                mem[_412 + 64] = t
                                mem[_412 + 96] = idx
                                mem[_412 + 128] = Mask(112, 0, _268)
                                idx = 0
                                s = _412
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                    else:
                        v = 10
                        w = 1
                        u = mem[_238]
                        while u > 1:
                            if v > -1 / v:
                                revert with 'NH{q', 17
                            if not bool(u):
                                v = v * v
                                w = w
                                u = uint255(u) * 0.5
                                continue 
                            v = v * v
                            w = w * v
                            u = uint255(u) * 0.5
                            continue 
                        if w > -1 / v:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        if cd[((32 * t) + cd[68] + 36)] and w * v > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 'NH{q', 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor14.length:
                            revert with 'NH{q', 50
                        mem[0] = 14
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor14[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor14[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_425] == mem[_425 + 12 len 20]
                        if not mem[_425 + 12 len 20]:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_235))
                        staticcall address(_235).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _430 = mem[_429]
                        require mem[_429] == mem[_429 + 18 len 14]
                        _431 = mem[_429 + 32]
                        require mem[_429 + 32] == mem[_429 + 50 len 14]
                        require mem[_429 + 64] == mem[_429 + 92 len 4]
                        if mem[_429 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * w * v:
                            if mem[_429 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * w * v:
                                _433 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_433] = 0
                                mem[_433 + 32] = t
                                mem[_433 + 64] = Mask(112, 0, _430)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_444] == mem[_444 + 12 len 20]
                            if mem[_444 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _449 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_449] = 0
                                mem[_449 + 32] = t
                                mem[_449 + 64] = Mask(112, 0, _430)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _450 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_450] = 1
                            mem[_450 + 32] = t
                            mem[_450 + 64] = Mask(112, 0, _431)
                            _459 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_459] = 1
                            mem[_459 + 32] = s
                            mem[_459 + 64] = t
                            mem[_459 + 96] = idx
                            mem[_459 + 128] = Mask(112, 0, _431)
                            idx = 0
                            s = _459
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_443] == mem[_443 + 12 len 20]
                            if mem[_443 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _448 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_448] = 1
                                mem[_448 + 32] = t
                                mem[_448 + 64] = Mask(112, 0, _430)
                                _453 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_453] = 1
                                mem[_453 + 32] = s
                                mem[_453 + 64] = t
                                mem[_453 + 96] = idx
                                mem[_453 + 128] = Mask(112, 0, _430)
                                idx = 0
                                s = _453
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _431) < cd[((32 * t) + cd[68] + 36)] * w * v:
                                    _451 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_451] = 0
                                    mem[_451 + 32] = t
                                    mem[_451 + 64] = Mask(112, 0, _430)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_235))
                                staticcall address(_235).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _474 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_474] == mem[_474 + 12 len 20]
                                if mem[_474 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _480 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_480] = 0
                                    mem[_480 + 32] = t
                                    mem[_480 + 64] = Mask(112, 0, _430)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                _481 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_481] = 1
                                mem[_481 + 32] = t
                                mem[_481 + 64] = Mask(112, 0, _431)
                                _485 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_485] = 1
                                mem[_485 + 32] = s
                                mem[_485 + 64] = t
                                mem[_485 + 96] = idx
                                mem[_485 + 128] = Mask(112, 0, _431)
                                idx = 0
                                s = _485
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                return memory
                  from mem[64]
                   len 160
            _224 = mem[64]
            mem[64] = mem[64] + 96
            mem[_224] = 0
            mem[_224 + 32] = 0
            mem[_224 + 64] = 0
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function distribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2:
        s = arg2
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s <= idx:
                _349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_349] == mem[_349]
                if mem[_349] >= s:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_369] == bool(mem[_369])
                if idx < s:
                    revert with 'NH{q', 17
                s = s
                idx = idx - s
                continue 
            _352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_352] == mem[_352]
            if mem[_352] >= idx:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_371] == bool(mem[_371])
            if idx < idx:
                revert with 'NH{q', 17
            s = idx
            idx = 0
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _357 = mem[_351]
        require mem[_351] == mem[_351]
        if sub_68bb600b > -sub_cb6adbe9 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 > -sub_8796f547 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 + sub_8796f547 > -sub_5f0b2083 - 1:
            revert with 'NH{q', 17
        if sub_cb6adbe9 and 100 > -1 / sub_cb6adbe9:
            revert with 'NH{q', 17
        if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
            revert with 'NH{q', 18
        if mem[_351] and 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / mem[_351]:
            revert with 'NH{q', 17
        if mem[_351] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
            idx = mem[_351] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
            while idx > 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                    _1225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1225] == mem[_1225]
                    if mem[_1225] >= _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        mem[mem[64] + 4] = sub_7d3cdd60Address
                        mem[mem[64] + 36] = _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_7d3cdd60Address, _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1270] == bool(mem[_1270])
                    if idx < _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        revert with 'NH{q', 17
                    idx = idx - (_357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                    continue 
                _1229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1229] == mem[_1229]
                if mem[_1229] >= idx:
                    mem[mem[64] + 4] = sub_7d3cdd60Address
                    mem[mem[64] + 36] = idx
                    require ext_code.size(stor12)
                    call stor12.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_7d3cdd60Address, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1277] == bool(mem[_1277])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
            if sub_8796f547 and 100 > -1 / sub_8796f547:
                revert with 'NH{q', 17
            if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                revert with 'NH{q', 18
            if _357 and 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                revert with 'NH{q', 17
            if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                idx = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2265] == mem[_2265]
                        if mem[_2265] >= _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2370] == bool(mem[_2370])
                        if idx < _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2273 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2273] == mem[_2273]
                    if mem[_2273] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2385] == bool(mem[_2385])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _357 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                    revert with 'NH{q', 17
                if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3290] == mem[_3290]
                            if mem[_3290] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3563 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3563] == bool(mem[_3563])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3321] == mem[_3321]
                        if mem[_3321] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3611] == bool(mem[_3611])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3337 = mem[_3289]
                    require mem[_3289] == mem[_3289]
                    if mem[_3289]:
                        idx = mem[_3289]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3337 <= idx:
                                _4153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4153] == mem[_4153]
                                if mem[_4153] >= _3337:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3337
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3337
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4409 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4409] == bool(mem[_4409])
                                if idx < _3337:
                                    revert with 'NH{q', 17
                                idx = idx - _3337
                                continue 
                            _4185 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4185] == mem[_4185]
                            if mem[_4185] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4441 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4441] == bool(mem[_4441])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3289]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3337 <= idx:
                                _4154 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4154] == mem[_4154]
                                if mem[_4154] >= _3337:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3337
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3337
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4410 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4410] == bool(mem[_4410])
                                if idx < _3337:
                                    revert with 'NH{q', 17
                                idx = idx - _3337
                                continue 
                            _4186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4186] == mem[_4186]
                            if mem[_4186] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4442 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4442] == bool(mem[_4442])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3292 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3292] == mem[_3292]
                            if mem[_3292] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3566 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3566] == bool(mem[_3566])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3322] == mem[_3322]
                        if mem[_3322] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3614] == bool(mem[_3614])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3339 = mem[_3291]
                    require mem[_3291] == mem[_3291]
                    if mem[_3291]:
                        idx = mem[_3291]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3339 <= idx:
                                _4155 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4155] == mem[_4155]
                                if mem[_4155] >= _3339:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3339
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3339
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4411 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4411] == bool(mem[_4411])
                                if idx < _3339:
                                    revert with 'NH{q', 17
                                idx = idx - _3339
                                continue 
                            _4187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4187] == mem[_4187]
                            if mem[_4187] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4443 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4443] == bool(mem[_4443])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3291]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3339 <= idx:
                                _4156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4156] == mem[_4156]
                                if mem[_4156] >= _3339:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3339
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3339
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4412 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4412] == bool(mem[_4412])
                                if idx < _3339:
                                    revert with 'NH{q', 17
                                idx = idx - _3339
                                continue 
                            _4188 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4188] == mem[_4188]
                            if mem[_4188] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4444 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4444] == bool(mem[_4444])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                idx = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2266] == mem[_2266]
                        if mem[_2266] >= _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2372] == bool(mem[_2372])
                        if idx < _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2274 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2274] == mem[_2274]
                    if mem[_2274] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2386] == bool(mem[_2386])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _357 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                    revert with 'NH{q', 17
                if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3294] == mem[_3294]
                            if mem[_3294] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3569 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3569] == bool(mem[_3569])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3323] == mem[_3323]
                        if mem[_3323] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3617 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3617] == bool(mem[_3617])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3341 = mem[_3293]
                    require mem[_3293] == mem[_3293]
                    if mem[_3293]:
                        idx = mem[_3293]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3341 <= idx:
                                _4157 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4157] == mem[_4157]
                                if mem[_4157] >= _3341:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3341
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3341
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4413 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4413] == bool(mem[_4413])
                                if idx < _3341:
                                    revert with 'NH{q', 17
                                idx = idx - _3341
                                continue 
                            _4189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4189] == mem[_4189]
                            if mem[_4189] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4445] == bool(mem[_4445])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3293]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3341 <= idx:
                                _4158 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4158] == mem[_4158]
                                if mem[_4158] >= _3341:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3341
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3341
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4414 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4414] == bool(mem[_4414])
                                if idx < _3341:
                                    revert with 'NH{q', 17
                                idx = idx - _3341
                                continue 
                            _4190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4190] == mem[_4190]
                            if mem[_4190] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4446 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4446] == bool(mem[_4446])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3296 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3296] == mem[_3296]
                            if mem[_3296] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3572 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3572] == bool(mem[_3572])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3324] == mem[_3324]
                        if mem[_3324] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3620] == bool(mem[_3620])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3343 = mem[_3295]
                    require mem[_3295] == mem[_3295]
                    if mem[_3295]:
                        idx = mem[_3295]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3343 <= idx:
                                _4159 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4159] == mem[_4159]
                                if mem[_4159] >= _3343:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3343
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3343
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4415 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4415] == bool(mem[_4415])
                                if idx < _3343:
                                    revert with 'NH{q', 17
                                idx = idx - _3343
                                continue 
                            _4191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4191] == mem[_4191]
                            if mem[_4191] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4447 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4447] == bool(mem[_4447])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3295]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3343 <= idx:
                                _4160 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4160] == mem[_4160]
                                if mem[_4160] >= _3343:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3343
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3343
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4416 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4416] == bool(mem[_4416])
                                if idx < _3343:
                                    revert with 'NH{q', 17
                                idx = idx - _3343
                                continue 
                            _4192 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4192] == mem[_4192]
                            if mem[_4192] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4448 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4448] == bool(mem[_4448])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
        else:
            idx = mem[_351] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
            while idx > 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                    _1226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1226] == mem[_1226]
                    if mem[_1226] >= _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        mem[mem[64] + 4] = sub_7d3cdd60Address
                        mem[mem[64] + 36] = _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_7d3cdd60Address, _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1272] == bool(mem[_1272])
                    if idx < _357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        revert with 'NH{q', 17
                    idx = idx - (_357 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                    continue 
                _1230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1230] == mem[_1230]
                if mem[_1230] >= idx:
                    mem[mem[64] + 4] = sub_7d3cdd60Address
                    mem[mem[64] + 36] = idx
                    require ext_code.size(stor12)
                    call stor12.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_7d3cdd60Address, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1278] == bool(mem[_1278])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
            if sub_8796f547 and 100 > -1 / sub_8796f547:
                revert with 'NH{q', 17
            if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                revert with 'NH{q', 18
            if _357 and 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                revert with 'NH{q', 17
            if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                idx = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2267] == mem[_2267]
                        if mem[_2267] >= _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2374] == bool(mem[_2374])
                        if idx < _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2275] == mem[_2275]
                    if mem[_2275] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2387] == bool(mem[_2387])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _357 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                    revert with 'NH{q', 17
                if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3298] == mem[_3298]
                            if mem[_3298] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3575 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3575] == bool(mem[_3575])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3325] == mem[_3325]
                        if mem[_3325] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3623] == bool(mem[_3623])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3345 = mem[_3297]
                    require mem[_3297] == mem[_3297]
                    if mem[_3297]:
                        idx = mem[_3297]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3345 <= idx:
                                _4161 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4161] == mem[_4161]
                                if mem[_4161] >= _3345:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3345
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3345
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4417 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4417] == bool(mem[_4417])
                                if idx < _3345:
                                    revert with 'NH{q', 17
                                idx = idx - _3345
                                continue 
                            _4193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4193] == mem[_4193]
                            if mem[_4193] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4449 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4449] == bool(mem[_4449])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3297]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3345 <= idx:
                                _4162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4162] == mem[_4162]
                                if mem[_4162] >= _3345:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3345
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3345
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4418 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4418] == bool(mem[_4418])
                                if idx < _3345:
                                    revert with 'NH{q', 17
                                idx = idx - _3345
                                continue 
                            _4194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4194] == mem[_4194]
                            if mem[_4194] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4450 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4450] == bool(mem[_4450])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3300 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3300] == mem[_3300]
                            if mem[_3300] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3578 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3578] == bool(mem[_3578])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3326] == mem[_3326]
                        if mem[_3326] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3626 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3626] == bool(mem[_3626])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3347 = mem[_3299]
                    require mem[_3299] == mem[_3299]
                    if mem[_3299]:
                        idx = mem[_3299]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3347 <= idx:
                                _4163 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4163] == mem[_4163]
                                if mem[_4163] >= _3347:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3347
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3347
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4419 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4419] == bool(mem[_4419])
                                if idx < _3347:
                                    revert with 'NH{q', 17
                                idx = idx - _3347
                                continue 
                            _4195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4195] == mem[_4195]
                            if mem[_4195] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4451 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4451] == bool(mem[_4451])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3299]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3347 <= idx:
                                _4164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4164] == mem[_4164]
                                if mem[_4164] >= _3347:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3347
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3347
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4420 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4420] == bool(mem[_4420])
                                if idx < _3347:
                                    revert with 'NH{q', 17
                                idx = idx - _3347
                                continue 
                            _4196 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4196] == mem[_4196]
                            if mem[_4196] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4452 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4452] == bool(mem[_4452])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                idx = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2268] == mem[_2268]
                        if mem[_2268] >= _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2376 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2376] == bool(mem[_2376])
                        if idx < _357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_357 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2276] == mem[_2276]
                    if mem[_2276] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2388] == bool(mem[_2388])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _357 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _357:
                    revert with 'NH{q', 17
                if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3302] == mem[_3302]
                            if mem[_3302] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3581] == bool(mem[_3581])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3327] == mem[_3327]
                        if mem[_3327] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3629 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3629] == bool(mem[_3629])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3349 = mem[_3301]
                    require mem[_3301] == mem[_3301]
                    if mem[_3301]:
                        idx = mem[_3301]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3349 <= idx:
                                _4165 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4165] == mem[_4165]
                                if mem[_4165] >= _3349:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3349
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3349
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4421 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4421] == bool(mem[_4421])
                                if idx < _3349:
                                    revert with 'NH{q', 17
                                idx = idx - _3349
                                continue 
                            _4197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4197] == mem[_4197]
                            if mem[_4197] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4453 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4453] == bool(mem[_4453])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3301]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3349 <= idx:
                                _4166 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4166] == mem[_4166]
                                if mem[_4166] >= _3349:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3349
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3349
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4422 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4422] == bool(mem[_4422])
                                if idx < _3349:
                                    revert with 'NH{q', 17
                                idx = idx - _3349
                                continue 
                            _4198 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4198] == mem[_4198]
                            if mem[_4198] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4454 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4454] == bool(mem[_4454])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3304] == mem[_3304]
                            if mem[_3304] >= _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3584] == bool(mem[_3584])
                            if idx < _357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_357 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3328] == mem[_3328]
                        if mem[_3328] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3632 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3632] == bool(mem[_3632])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3351 = mem[_3303]
                    require mem[_3303] == mem[_3303]
                    if mem[_3303]:
                        idx = mem[_3303]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3351 <= idx:
                                _4167 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4167] == mem[_4167]
                                if mem[_4167] >= _3351:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3351
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3351
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4423 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4423] == bool(mem[_4423])
                                if idx < _3351:
                                    revert with 'NH{q', 17
                                idx = idx - _3351
                                continue 
                            _4199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4199] == mem[_4199]
                            if mem[_4199] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4455 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4455] == bool(mem[_4455])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3303]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3351 <= idx:
                                _4168 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4168] == mem[_4168]
                                if mem[_4168] >= _3351:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3351
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3351
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4424 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4424] == bool(mem[_4424])
                                if idx < _3351:
                                    revert with 'NH{q', 17
                                idx = idx - _3351
                                continue 
                            _4200 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4200] == mem[_4200]
                            if mem[_4200] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4456 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4456] == bool(mem[_4456])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
    else:
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] <= idx:
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_350] == mem[_350]
                if mem[_350] >= ext_call.return_data[0]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_370] == bool(mem[_370])
                if idx < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = idx - ext_call.return_data[0]
                continue 
            _354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_354] == mem[_354]
            if mem[_354] >= idx:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = idx
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_372] == bool(mem[_372])
            if idx < idx:
                revert with 'NH{q', 17
            idx = 0
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_353]
        require mem[_353] == mem[_353]
        if sub_68bb600b > -sub_cb6adbe9 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 > -sub_8796f547 - 1:
            revert with 'NH{q', 17
        if sub_68bb600b + sub_cb6adbe9 + sub_8796f547 > -sub_5f0b2083 - 1:
            revert with 'NH{q', 17
        if sub_cb6adbe9 and 100 > -1 / sub_cb6adbe9:
            revert with 'NH{q', 17
        if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
            revert with 'NH{q', 18
        if mem[_353] and 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / mem[_353]:
            revert with 'NH{q', 17
        if mem[_353] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
            idx = mem[_353] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
            while idx > 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                    _1227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1227] == mem[_1227]
                    if mem[_1227] >= _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        mem[mem[64] + 4] = sub_7d3cdd60Address
                        mem[mem[64] + 36] = _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_7d3cdd60Address, _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1274] == bool(mem[_1274])
                    if idx < _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        revert with 'NH{q', 17
                    idx = idx - (_359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                    continue 
                _1231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1231] == mem[_1231]
                if mem[_1231] >= idx:
                    mem[mem[64] + 4] = sub_7d3cdd60Address
                    mem[mem[64] + 36] = idx
                    require ext_code.size(stor12)
                    call stor12.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_7d3cdd60Address, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1279] == bool(mem[_1279])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
            if sub_8796f547 and 100 > -1 / sub_8796f547:
                revert with 'NH{q', 17
            if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                revert with 'NH{q', 18
            if _359 and 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                revert with 'NH{q', 17
            if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                idx = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2269] == mem[_2269]
                        if mem[_2269] >= _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2378 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2378] == bool(mem[_2378])
                        if idx < _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2277] == mem[_2277]
                    if mem[_2277] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2389] == bool(mem[_2389])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _359 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                    revert with 'NH{q', 17
                if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3306] == mem[_3306]
                            if mem[_3306] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3587] == bool(mem[_3587])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3329] == mem[_3329]
                        if mem[_3329] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3635] == bool(mem[_3635])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3353 = mem[_3305]
                    require mem[_3305] == mem[_3305]
                    if mem[_3305]:
                        idx = mem[_3305]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3353 <= idx:
                                _4169 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4169] == mem[_4169]
                                if mem[_4169] >= _3353:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3353
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3353
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4425 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4425] == bool(mem[_4425])
                                if idx < _3353:
                                    revert with 'NH{q', 17
                                idx = idx - _3353
                                continue 
                            _4201 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4201] == mem[_4201]
                            if mem[_4201] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4457] == bool(mem[_4457])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3305]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3353 <= idx:
                                _4170 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4170] == mem[_4170]
                                if mem[_4170] >= _3353:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3353
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3353
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4426 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4426] == bool(mem[_4426])
                                if idx < _3353:
                                    revert with 'NH{q', 17
                                idx = idx - _3353
                                continue 
                            _4202 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4202] == mem[_4202]
                            if mem[_4202] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4458 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4458] == bool(mem[_4458])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3308] == mem[_3308]
                            if mem[_3308] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3590 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3590] == bool(mem[_3590])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3330] == mem[_3330]
                        if mem[_3330] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3638] == bool(mem[_3638])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3355 = mem[_3307]
                    require mem[_3307] == mem[_3307]
                    if mem[_3307]:
                        idx = mem[_3307]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3355 <= idx:
                                _4171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4171] == mem[_4171]
                                if mem[_4171] >= _3355:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3355
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3355
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4427 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4427] == bool(mem[_4427])
                                if idx < _3355:
                                    revert with 'NH{q', 17
                                idx = idx - _3355
                                continue 
                            _4203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4203] == mem[_4203]
                            if mem[_4203] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4459 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4459] == bool(mem[_4459])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3307]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3355 <= idx:
                                _4172 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4172] == mem[_4172]
                                if mem[_4172] >= _3355:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3355
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3355
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4428 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4428] == bool(mem[_4428])
                                if idx < _3355:
                                    revert with 'NH{q', 17
                                idx = idx - _3355
                                continue 
                            _4204 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4204] == mem[_4204]
                            if mem[_4204] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4460 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4460] == bool(mem[_4460])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                idx = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2270] == mem[_2270]
                        if mem[_2270] >= _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2380] == bool(mem[_2380])
                        if idx < _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2278] == mem[_2278]
                    if mem[_2278] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2390] == bool(mem[_2390])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _359 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                    revert with 'NH{q', 17
                if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3310] == mem[_3310]
                            if mem[_3310] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3593 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3593] == bool(mem[_3593])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3331] == mem[_3331]
                        if mem[_3331] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3641] == bool(mem[_3641])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3357 = mem[_3309]
                    require mem[_3309] == mem[_3309]
                    if mem[_3309]:
                        idx = mem[_3309]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3357 <= idx:
                                _4173 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4173] == mem[_4173]
                                if mem[_4173] >= _3357:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3357
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3357
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4429 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4429] == bool(mem[_4429])
                                if idx < _3357:
                                    revert with 'NH{q', 17
                                idx = idx - _3357
                                continue 
                            _4205 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4205] == mem[_4205]
                            if mem[_4205] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4461 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4461] == bool(mem[_4461])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3309]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3357 <= idx:
                                _4174 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4174] == mem[_4174]
                                if mem[_4174] >= _3357:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3357
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3357
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4430 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4430] == bool(mem[_4430])
                                if idx < _3357:
                                    revert with 'NH{q', 17
                                idx = idx - _3357
                                continue 
                            _4206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4206] == mem[_4206]
                            if mem[_4206] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4462 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4462] == bool(mem[_4462])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3312] == mem[_3312]
                            if mem[_3312] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3596 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3596] == bool(mem[_3596])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3332] == mem[_3332]
                        if mem[_3332] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3644] == bool(mem[_3644])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3359 = mem[_3311]
                    require mem[_3311] == mem[_3311]
                    if mem[_3311]:
                        idx = mem[_3311]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3359 <= idx:
                                _4175 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4175] == mem[_4175]
                                if mem[_4175] >= _3359:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3359
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3359
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4431 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4431] == bool(mem[_4431])
                                if idx < _3359:
                                    revert with 'NH{q', 17
                                idx = idx - _3359
                                continue 
                            _4207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4207] == mem[_4207]
                            if mem[_4207] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4463 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4463] == bool(mem[_4463])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3311]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3359 <= idx:
                                _4176 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4176] == mem[_4176]
                                if mem[_4176] >= _3359:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3359
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3359
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4432 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4432] == bool(mem[_4432])
                                if idx < _3359:
                                    revert with 'NH{q', 17
                                idx = idx - _3359
                                continue 
                            _4208 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4208] == mem[_4208]
                            if mem[_4208] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4464 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4464] == bool(mem[_4464])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
        else:
            idx = mem[_353] * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
            while idx > 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                    _1228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1228] == mem[_1228]
                    if mem[_1228] >= _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        mem[mem[64] + 4] = sub_7d3cdd60Address
                        mem[mem[64] + 36] = _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_7d3cdd60Address, _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1276] == bool(mem[_1276])
                    if idx < _359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                        revert with 'NH{q', 17
                    idx = idx - (_359 * 100 * sub_cb6adbe9 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                    continue 
                _1232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1232] == mem[_1232]
                if mem[_1232] >= idx:
                    mem[mem[64] + 4] = sub_7d3cdd60Address
                    mem[mem[64] + 36] = idx
                    require ext_code.size(stor12)
                    call stor12.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_7d3cdd60Address, idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1280] == bool(mem[_1280])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
            if sub_8796f547 and 100 > -1 / sub_8796f547:
                revert with 'NH{q', 17
            if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                revert with 'NH{q', 18
            if _359 and 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                revert with 'NH{q', 17
            if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                idx = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2271] == mem[_2271]
                        if mem[_2271] >= _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2382 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2382] == bool(mem[_2382])
                        if idx < _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2279] == mem[_2279]
                    if mem[_2279] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2391] == bool(mem[_2391])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _359 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                    revert with 'NH{q', 17
                if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3314] == mem[_3314]
                            if mem[_3314] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3599] == bool(mem[_3599])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3333] == mem[_3333]
                        if mem[_3333] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3647] == bool(mem[_3647])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3361 = mem[_3313]
                    require mem[_3313] == mem[_3313]
                    if mem[_3313]:
                        idx = mem[_3313]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3361 <= idx:
                                _4177 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4177] == mem[_4177]
                                if mem[_4177] >= _3361:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3361
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3361
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4433 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4433] == bool(mem[_4433])
                                if idx < _3361:
                                    revert with 'NH{q', 17
                                idx = idx - _3361
                                continue 
                            _4209 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4209] == mem[_4209]
                            if mem[_4209] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4465 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4465] == bool(mem[_4465])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3313]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3361 <= idx:
                                _4178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4178] == mem[_4178]
                                if mem[_4178] >= _3361:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3361
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3361
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4434 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4434] == bool(mem[_4434])
                                if idx < _3361:
                                    revert with 'NH{q', 17
                                idx = idx - _3361
                                continue 
                            _4210 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4210] == mem[_4210]
                            if mem[_4210] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4466 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4466] == bool(mem[_4466])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3316] == mem[_3316]
                            if mem[_3316] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3602 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3602] == bool(mem[_3602])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3334] == mem[_3334]
                        if mem[_3334] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3650] == bool(mem[_3650])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3363 = mem[_3315]
                    require mem[_3315] == mem[_3315]
                    if mem[_3315]:
                        idx = mem[_3315]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3363 <= idx:
                                _4179 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4179] == mem[_4179]
                                if mem[_4179] >= _3363:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3363
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3363
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4435] == bool(mem[_4435])
                                if idx < _3363:
                                    revert with 'NH{q', 17
                                idx = idx - _3363
                                continue 
                            _4211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4211] == mem[_4211]
                            if mem[_4211] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4467] == bool(mem[_4467])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3315]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3363 <= idx:
                                _4180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4180] == mem[_4180]
                                if mem[_4180] >= _3363:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3363
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3363
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4436 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4436] == bool(mem[_4436])
                                if idx < _3363:
                                    revert with 'NH{q', 17
                                idx = idx - _3363
                                continue 
                            _4212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4212] == mem[_4212]
                            if mem[_4212] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4468 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4468] == bool(mem[_4468])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                idx = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                while idx > 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                        _2272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2272] == mem[_2272]
                        if mem[_2272] >= _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            mem[mem[64] + 4] = sub_9ab8c78fAddress
                            mem[mem[64] + 36] = _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_9ab8c78fAddress, _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2384 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2384] == bool(mem[_2384])
                        if idx < _359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                            revert with 'NH{q', 17
                        idx = idx - (_359 * 100 * sub_8796f547 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                        continue 
                    _2280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2280] == mem[_2280]
                    if mem[_2280] >= idx:
                        mem[mem[64] + 4] = sub_9ab8c78fAddress
                        mem[mem[64] + 36] = idx
                        require ext_code.size(stor12)
                        call stor12.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_9ab8c78fAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2392] == bool(mem[_2392])
                    if idx < idx:
                        revert with 'NH{q', 17
                    idx = 0
                    continue 
                if sub_5f0b2083 and 100 > -1 / sub_5f0b2083:
                    revert with 'NH{q', 17
                if not sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083:
                    revert with 'NH{q', 18
                if _359 and 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 > -1 / _359:
                    revert with 'NH{q', 17
                if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3318] == mem[_3318]
                            if mem[_3318] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3605 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3605] == bool(mem[_3605])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3335] == mem[_3335]
                        if mem[_3335] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3653] == bool(mem[_3653])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3365 = mem[_3317]
                    require mem[_3317] == mem[_3317]
                    if mem[_3317]:
                        idx = mem[_3317]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3365 <= idx:
                                _4181 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4181] == mem[_4181]
                                if mem[_4181] >= _3365:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3365
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3365
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4437 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4437] == bool(mem[_4437])
                                if idx < _3365:
                                    revert with 'NH{q', 17
                                idx = idx - _3365
                                continue 
                            _4213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4213] == mem[_4213]
                            if mem[_4213] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4469] == bool(mem[_4469])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3317]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3365 <= idx:
                                _4182 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4182] == mem[_4182]
                                if mem[_4182] >= _3365:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3365
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3365
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4438 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4438] == bool(mem[_4438])
                                if idx < _3365:
                                    revert with 'NH{q', 17
                                idx = idx - _3365
                                continue 
                            _4214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4214] == mem[_4214]
                            if mem[_4214] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4470 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4470] == bool(mem[_4470])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    idx = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                    while idx > 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100 <= idx:
                            _3320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3320] == mem[_3320]
                            if mem[_3320] >= _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                mem[mem[64] + 4] = sub_62a251e3Address
                                mem[mem[64] + 36] = _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_62a251e3Address, _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3608] == bool(mem[_3608])
                            if idx < _359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100:
                                revert with 'NH{q', 17
                            idx = idx - (_359 * 100 * sub_5f0b2083 / sub_68bb600b + sub_cb6adbe9 + sub_8796f547 + sub_5f0b2083 / 100)
                            continue 
                        _3336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3336] == mem[_3336]
                        if mem[_3336] >= idx:
                            mem[mem[64] + 4] = sub_62a251e3Address
                            mem[mem[64] + 36] = idx
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_62a251e3Address, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3656 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3656] == bool(mem[_3656])
                        if idx < idx:
                            revert with 'NH{q', 17
                        idx = 0
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3367 = mem[_3319]
                    require mem[_3319] == mem[_3319]
                    if mem[_3319]:
                        idx = mem[_3319]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3367 <= idx:
                                _4183 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4183] == mem[_4183]
                                if mem[_4183] >= _3367:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3367
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3367
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4439 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4439] == bool(mem[_4439])
                                if idx < _3367:
                                    revert with 'NH{q', 17
                                idx = idx - _3367
                                continue 
                            _4215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4215] == mem[_4215]
                            if mem[_4215] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4471] == bool(mem[_4471])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        idx = mem[_3319]
                        while idx > 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3367 <= idx:
                                _4184 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4184] == mem[_4184]
                                if mem[_4184] >= _3367:
                                    mem[mem[64] + 4] = stor1.length
                                    mem[mem[64] + 36] = _3367
                                    require ext_code.size(stor12)
                                    call stor12.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor1.length, _3367
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4440] == bool(mem[_4440])
                                if idx < _3367:
                                    revert with 'NH{q', 17
                                idx = idx - _3367
                                continue 
                            _4216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4216] == mem[_4216]
                            if mem[_4216] >= idx:
                                mem[mem[64] + 4] = stor1.length
                                mem[mem[64] + 36] = idx
                                require ext_code.size(stor12)
                                call stor12.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor1.length, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4472 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4472] == bool(mem[_4472])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
}



}
