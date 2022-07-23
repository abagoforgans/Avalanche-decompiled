contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_635bfd8a(?) payable {
    mem[64] = 96
    idx = 1
    s = 0
    while address(idx):
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            return s
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15 + 12 len 20]
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == mem[_21 + 12 len 20]
        if s == -1:
            revert with 'NH{q', 17
        idx = mem[_21]
        s = s + 1
        continue 
    return 0
}

function sub_61672799(?) payable {
    require ext_code.size(this.address)
    staticcall this.address.0x635bfd8a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor0)
        staticcall stor0.TroveOwners(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_20 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    if 0 >= mem[96]:
        return 32, mem[96]
    mem[mem[64] + 64] = mem[140 len 20]
    idx = 1
    s = 160
    t = mem[64] + 96
    while idx < _18:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _17 + (32 * _18 - 1) + -mem[64] + 96
}

function sub_4d171699(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == stor2
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[ceil32(return_data.size) + 96] = 0x2f86556800000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(stor0)
        call stor0.liquidate(address arg1) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffffffffa9438a1d29cefffff:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0] + 100 * 10^18:
        revert with 0, ' NO_P '
}



}
