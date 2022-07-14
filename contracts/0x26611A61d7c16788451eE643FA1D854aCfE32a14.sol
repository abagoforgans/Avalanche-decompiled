contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
address stor2;
address nftAddress;
array of uint256 sub_0e31c2e3;
array of uint256 sub_41e3956a;
array of uint256 burnRate;
array of uint256 sub_ba0dcc87;
address devAddress;
address sub_99c6acf2Address;
address sub_5c771211Address;
address sub_835591aeAddress;
array of uint256 sub_381fdf4a;
array of uint256 sub_4c5e49d0;
array of address sub_bb189cca;
mapping of uint8 stor15;

function sub_0e31c2e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0e31c2e3.length
    return sub_0e31c2e3[arg1]
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sub_381fdf4a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < 4444
    return sub_381fdf4a[arg1][arg2]
}

function sub_41e3956a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_41e3956a.length
    return sub_41e3956a[arg1]
}

function nft() payable {
    return nftAddress
}

function sub_4c5e49d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4c5e49d0.length
    return sub_4c5e49d0[arg1]
}

function sub_5c771211(?) payable {
    return sub_5c771211Address
}

function sub_835591ae(?) payable {
    return sub_835591aeAddress
}

function burnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < burnRate.length
    return burnRate[arg1]
}

function dev() payable {
    return devAddress
}

function sub_99c6acf2(?) payable {
    return sub_99c6acf2Address
}

function sub_ba0dcc87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ba0dcc87.length
    return sub_ba0dcc87[arg1]
}

function sub_bb189cca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_bb189cca.length
    return sub_bb189cca[arg1]
}

function isGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_ed46049a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function _fallback() payable {
    revert
}

function sub_1fcc9f89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    stor15[address(arg1)] = 0
}

function sub_f06459ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    stor2 = address(arg1)
    nftAddress = stor2
}

function sub_977b1e0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    sub_0e31c2e3[arg1] = 0
}

function sub_2526ce5f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    if arg2 >= sub_ba0dcc87.length:
        revert with 'NH{q', 50
    sub_ba0dcc87[arg2] = arg1
}

function sub_35a2cb62(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    if arg2 >= sub_41e3956a.length:
        revert with 'NH{q', 50
    sub_41e3956a[arg2] = arg1
}

function setBurnRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    if arg2 >= burnRate.length:
        revert with 'NH{q', 50
    burnRate[arg2] = arg1
}

function sub_15699b8a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= 4444:
        revert with 'NH{q', 50
    if arg2 >= sub_4c5e49d0.length:
        revert with 'NH{q', 50
    if sub_4c5e49d0[arg2] < sub_381fdf4a[arg2][arg1]:
        revert with 'NH{q', 17
    return (sub_4c5e49d0[arg2] - sub_381fdf4a[arg2][arg1])
}

function sub_ae6841db(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require stor0[address(msg.sender)]
    require ext_code.size(address(arg3))
    call address(arg3).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_14a596ff(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require stor0[address(msg.sender)]
    if arg3 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_bb189cca[arg3])
    call sub_bb189cca[arg3].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fd60674b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    sub_0e31c2e3.length++
    sub_0e31c2e3[sub_0e31c2e3.length] = 0
    sub_bb189cca.length++
    sub_bb189cca[sub_bb189cca.length] = address(arg1)
    stor15[address(arg1)] = 1
    sub_41e3956a.length++
    sub_41e3956a[sub_41e3956a.length] = arg2
    burnRate.length++
    burnRate[burnRate.length] = arg3
    sub_ba0dcc87.length++
    sub_ba0dcc87[sub_ba0dcc87.length] = arg4
    sub_4c5e49d0.length++
}

function sub_0137abc9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3441e57d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5f8d149a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a7cadddb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_22f7db60(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        require stor0[address(msg.sender)]
    if arg3 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    if arg3 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_bb189cca[arg3])
    staticcall sub_bb189cca[arg3].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 'NH{q', 17
    require ext_call.return_data[0] - arg1 >= sub_0e31c2e3[arg3]
    require ext_code.size(sub_bb189cca[arg3])
    call sub_bb189cca[arg3].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f3c77ac9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_bb189cca[arg2])
    staticcall sub_bb189cca[arg2].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg1
    require ext_code.size(sub_bb189cca[arg2])
    call sub_bb189cca[arg2].transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nftAddress)
    call nftAddress.totalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg2 >= sub_4c5e49d0.length:
        revert with 'NH{q', 50
    if sub_4c5e49d0[arg2] > -(arg1 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if arg2 >= sub_4c5e49d0.length:
        revert with 'NH{q', 50
    sub_4c5e49d0[arg2] += arg1 / ext_call.return_data[0]
}

function depositERC20(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        if arg2 >= sub_bb189cca.length:
            revert with 'NH{q', 50
        require ext_code.size(sub_bb189cca[arg2])
        staticcall sub_bb189cca[arg2].allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] >= arg1
        require ext_code.size(sub_bb189cca[arg2])
        call sub_bb189cca[arg2].transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0x7caf0ff4 with:
                gas gas_remaining wei
               args tx.origin
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -1001:
            revert with 'NH{q', 17
        if arg1 and 1000 > -1 / arg1:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] + 1000:
            revert with 'NH{q', 18
        if 1000 * arg1 / ext_call.return_data[0] + 1000 and ext_call.return_data[0] > -1 / 1000 * arg1 / ext_call.return_data[0] + 1000:
            revert with 'NH{q', 17
        if arg2 >= sub_0e31c2e3.length:
            revert with 'NH{q', 50
        if sub_0e31c2e3[arg2] > -(1000 * arg1 / ext_call.return_data[0] + 1000 * ext_call.return_data[0] / 1000) - 1:
            revert with 'NH{q', 17
        sub_0e31c2e3[arg2] += 1000 * arg1 / ext_call.return_data[0] + 1000 * ext_call.return_data[0] / 1000
    emit 0x64d94a75: arg1, msg.sender
}

function sub_1b624978(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(nftAddress)
    staticcall nftAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(nftAddress)
        staticcall nftAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] == mem[_17]
        mem[32] = 12
        if _18 >= 4444:
            revert with 'NH{q', 50
        if arg1 >= sub_4c5e49d0.length:
            revert with 'NH{q', 50
        mem[0] = 13
        if sub_4c5e49d0[arg1] < sub_381fdf4a[arg1][_18]:
            revert with 'NH{q', 17
        if s > -sub_4c5e49d0[arg1] + sub_381fdf4a[arg1][_18] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_4c5e49d0[arg1] - sub_381fdf4a[arg1][_18]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function sub_841d4573(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, '0x03'
    if arg1 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_bb189cca[arg1])
    staticcall sub_bb189cca[arg1].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > sub_0e31c2e3[arg1]
    if arg1 >= sub_41e3956a.length:
        revert with 'NH{q', 50
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    if sub_0e31c2e3[arg1] and sub_41e3956a[arg1] > -1 / sub_0e31c2e3[arg1]:
        revert with 'NH{q', 17
    require ext_code.size(nftAddress)
    call nftAddress.totalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 >= sub_4c5e49d0.length:
        revert with 'NH{q', 50
    if sub_4c5e49d0[arg1] > -(sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if arg1 >= sub_4c5e49d0.length:
        revert with 'NH{q', 50
    sub_4c5e49d0[arg1] += sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000 / ext_call.return_data[0]
    if arg1 >= burnRate.length:
        revert with 'NH{q', 50
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    if sub_0e31c2e3[arg1] and burnRate[arg1] > -1 / sub_0e31c2e3[arg1]:
        revert with 'NH{q', 17
    require ext_code.size(sub_bb189cca[arg1])
    call sub_bb189cca[arg1].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 57005, sub_0e31c2e3[arg1] * burnRate[arg1] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    if sub_0e31c2e3[arg1] < sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000:
        revert with 'NH{q', 17
    if sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) < sub_0e31c2e3[arg1] * burnRate[arg1] / 10000:
        revert with 'NH{q', 17
    if arg1 >= sub_ba0dcc87.length:
        revert with 'NH{q', 50
    if Mask(254, 2, sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000)) and sub_ba0dcc87[arg1] > -1 / sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4:
        revert with 'NH{q', 17
    require ext_code.size(sub_bb189cca[arg1])
    call sub_bb189cca[arg1].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_99c6acf2Address, sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bb189cca[arg1])
    call sub_bb189cca[arg1].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args devAddress, sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000 and 2 > -1 / sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000:
        revert with 'NH{q', 17
    if sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 < 2 * sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000:
        revert with 'NH{q', 17
    require ext_code.size(sub_bb189cca[arg1])
    call sub_bb189cca[arg1].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_835591aeAddress, (sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4) - (2 * sub_0e31c2e3[arg1] - (sub_0e31c2e3[arg1] * sub_41e3956a[arg1] / 10000) - (sub_0e31c2e3[arg1] * burnRate[arg1] / 10000) / 4 * sub_ba0dcc87[arg1] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= sub_0e31c2e3.length:
        revert with 'NH{q', 50
    sub_0e31c2e3[arg1] = 0
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(nftAddress)
    staticcall nftAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(nftAddress)
        staticcall nftAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_23]
        require mem[_23] == mem[_23]
        if mem[_23] >= 4444:
            revert with 'NH{q', 50
        if arg1 >= sub_4c5e49d0.length:
            revert with 'NH{q', 50
        if sub_4c5e49d0[arg1] < sub_381fdf4a[arg1][mem[_23]]:
            revert with 'NH{q', 17
        if s > -sub_4c5e49d0[arg1] + sub_381fdf4a[arg1][mem[_23]] - 1:
            revert with 'NH{q', 17
        if arg1 >= sub_4c5e49d0.length:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = 12
        if _25 >= 4444:
            revert with 'NH{q', 50
        sub_381fdf4a[arg1][_25] = sub_4c5e49d0[arg1]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_4c5e49d0[arg1] - sub_381fdf4a[arg1][_25]
        continue 
    if arg1 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    mem[0] = 14
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(sub_bb189cca[arg1])
    call sub_bb189cca[arg1].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_24] == bool(mem[_24])
}



}
