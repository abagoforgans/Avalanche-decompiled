contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 sub_a87f7fb9;
uint256 totalAirdrops;
uint256 sub_262504a8;
uint256 sub_c1493a31;
mapping of struct bens;
mapping of struct posters;
mapping of struct airdrops;
mapping of uint8 stor12;

function sub_262504a8(?) payable {
    return sub_262504a8
}

function posters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return posters[arg1].field_0, posters[arg1].field_128
}

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return airdrops[arg1].field_0, airdrops[arg1].field_128
}

function totalAirdrops() payable {
    return totalAirdrops
}

function sub_a87f7fb9(?) payable {
    return sub_a87f7fb9
}

function sub_c1493a31(?) payable {
    return sub_c1493a31
}

function sub_c2d61d33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function bens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bens[arg1].field_0, bens[arg1].field_0, bens[arg1].field_256
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_013e390b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    sub_c1493a31 = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1 = arg1
}

function init() payable {
    stor0 = msg.sender
    stor2 = 0x17fe17065b6f973f1bad851ed8c9461c0169c31
    stor4 = 0x60ba9aaa57aa638a60c524a3ac24da91e04cfa5c
    stor3 = 0x539cb40d3670fe03dbe67857c4d8da307a70b305
}

function sub_569c6c17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    if sub_262504a8 < bens[address(arg1)].field_128:
        revert with 'NH{q', 17
    sub_262504a8 -= bens[address(arg1)].field_128
    bens[address(arg1)].field_0 = 0
    bens[address(arg1)].field_0 = bens[address(arg1)].field_0
    bens[address(arg1)].field_256 = 0
}

function getRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require sub_c1493a31
    require msg.sender == 0x5e31d498c820d6b4d358fceeeaca5de8cc2f0cbb
    require ext_code.size(stor2)
    call stor2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addAirdrop(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    if airdrops[address(arg1)].field_0 > -uint128(arg2) + test266151307():
        revert with 'NH{q', 17
    airdrops[address(arg1)].field_0 = uint128(airdrops[address(arg1)].field_0 + uint128(arg2))
    if airdrops[address(arg1)].field_0 < 100 * 10^18:
        if airdrops[address(arg1)].field_0 >= 100 * 10^18:
            if totalAirdrops > -2:
                revert with 'NH{q', 17
            totalAirdrops++
    if not airdrops[address(arg1)].field_128:
        airdrops[address(arg1)].field_128 = uint128(block.number)
}

function sub_c9c5e486(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require msg.sender == stor0
    require not bens[address(arg1)].field_0
    require sub_262504a8 <= 100000 * 10^18
    if arg3 >= block.number:
        if not bens[address(arg1)].field_256:
            bens[address(arg1)].field_256 = uint64(arg3)
            bens[address(arg1)].field_320 = 0
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_256:
                bens[address(arg1)].field_256 = uint64(arg3)
                bens[address(arg1)].field_320 = 0
    else:
        if not bens[address(arg1)].field_256:
            bens[address(arg1)].field_256 = uint64(block.number)
            bens[address(arg1)].field_320 = 0
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_256:
                bens[address(arg1)].field_256 = uint64(block.number)
                bens[address(arg1)].field_320 = 0
    bens[address(arg1)].field_0 = uint128(arg2)
    bens[address(arg1)].field_128 = uint128(arg4)
    if sub_262504a8 > -arg4 - 1:
        revert with 'NH{q', 17
    sub_262504a8 += arg4
}

function sub_eea7dd3d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require msg.sender == stor1
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if airdrops[mem[(32 * idx) + 140 len 20]].field_0 >= 100 * 10^18:
            if sub_a87f7fb9 < 1:
                revert with 'NH{q', 17
            sub_a87f7fb9--
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        posters[mem[(32 * idx) + 140 len 20]].field_0 = 0
        posters[mem[(32 * idx) + 140 len 20]].field_0 = posters[mem[(32 * idx) + 140 len 20]].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_5314300a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require msg.sender == stor0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if airdrops[mem[(32 * idx) + 140 len 20]].field_0 >= 100 * 10^18:
            if totalAirdrops < 1:
                revert with 'NH{q', 17
            totalAirdrops--
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = 0
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = airdrops[mem[(32 * idx) + 140 len 20]].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6510b99c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == stor1
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if posters[mem[(32 * idx) + 140 len 20]].field_0 > -mem[(32 * idx) + floor32(('cd', 4).length) + 145 len 16] + test266151307():
            revert with 'NH{q', 17
        posters[mem[(32 * idx) + 140 len 20]].field_0 = uint128(posters[mem[(32 * idx) + 140 len 20]].field_0 + mem[(32 * idx) + floor32(('cd', 4).length) + 145 len 16])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if posters[mem[(32 * idx) + 140 len 20]].field_0 < 100 * 10^18:
            if posters[mem[(32 * idx) + 140 len 20]].field_0 >= 100 * 10^18:
                if sub_a87f7fb9 > -2:
                    revert with 'NH{q', 17
                sub_a87f7fb9++
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if not posters[mem[(32 * idx) + 140 len 20]].field_128:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            posters[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_80abc8d7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == stor0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if airdrops[mem[(32 * idx) + 140 len 20]].field_0 > -mem[(32 * idx) + floor32(('cd', 4).length) + 145 len 16] + test266151307():
            revert with 'NH{q', 17
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = uint128(airdrops[mem[(32 * idx) + 140 len 20]].field_0 + mem[(32 * idx) + floor32(('cd', 4).length) + 145 len 16])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if airdrops[mem[(32 * idx) + 140 len 20]].field_0 < 100 * 10^18:
            if airdrops[mem[(32 * idx) + 140 len 20]].field_0 >= 100 * 10^18:
                if totalAirdrops > -2:
                    revert with 'NH{q', 17
                totalAirdrops++
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if not airdrops[mem[(32 * idx) + 140 len 20]].field_128:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            airdrops[mem[(32 * idx) + 140 len 20]].field_128 = uint128(block.number)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d4520210(?) payable {
    posters[address(msg.sender)].field_128 = uint128(block.number)
    require posters[address(msg.sender)].field_0 > 0
    require sub_c1493a31
    if sub_c1493a31 <= posters[address(msg.sender)].field_128:
        require block.number > posters[address(msg.sender)].field_128
        if block.number < posters[address(msg.sender)].field_128:
            revert with 'NH{q', 17
        if block.number - posters[address(msg.sender)].field_128 and 124 * 10^14 > -1 / block.number - posters[address(msg.sender)].field_128:
            revert with 'NH{q', 17
        if not sub_a87f7fb9:
            revert with 'NH{q', 18
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (124 * 10^14 * block.number) - (124 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9 <= posters[address(msg.sender)].field_0:
            if (124 * 10^14 * block.number) - (124 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9 <= ext_call.return_data[0]:
                if posters[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9):
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9))
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * posters[address(msg.sender)].field_128) / sub_a87f7fb9
            else:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if posters[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if posters[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                if posters[address(msg.sender)].field_0 < posters[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = 0
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, posters[address(msg.sender)].field_0
            else:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if posters[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    else:
        require block.number > sub_c1493a31
        if block.number < sub_c1493a31:
            revert with 'NH{q', 17
        if block.number - sub_c1493a31 and 124 * 10^14 > -1 / block.number - sub_c1493a31:
            revert with 'NH{q', 17
        if not sub_a87f7fb9:
            revert with 'NH{q', 18
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / sub_a87f7fb9 <= posters[address(msg.sender)].field_0:
            if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / sub_a87f7fb9 <= ext_call.return_data[0]:
                if posters[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / sub_a87f7fb9):
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / sub_a87f7fb9))
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / sub_a87f7fb9
            else:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if posters[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if posters[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                if posters[address(msg.sender)].field_0 < posters[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = 0
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, posters[address(msg.sender)].field_0
            else:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if posters[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                    revert with 'NH{q', 17
                posters[address(msg.sender)].field_0 = uint128(posters[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not posters[address(msg.sender)].field_0:
        if sub_a87f7fb9 < 1:
            revert with 'NH{q', 17
        sub_a87f7fb9--
}

function sub_afb1214a(?) payable {
    require sub_c1493a31
    if bens[address(msg.sender)].field_256 >= sub_c1493a31:
        require block.number > bens[address(msg.sender)].field_256
        if bens[address(msg.sender)].field_128 > 0xb9f48036bf5794b4fb5f80c7dde2a1a1795b7836b25a0408462:
            revert with 'NH{q', 17
        if block.number < bens[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if block.number - bens[address(msg.sender)].field_256 and 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18 > -1 / block.number - bens[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
            if (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                bens[address(msg.sender)].field_256 = uint64(block.number)
                bens[address(msg.sender)].field_320 = 0
                if bens[address(msg.sender)].field_0 < uint128((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)):
                    revert with 'NH{q', 17
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - uint128((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)))
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return ((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (bens[address(msg.sender)].field_256 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
        else:
            if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                bens[address(msg.sender)].field_256 = uint64(block.number)
                bens[address(msg.sender)].field_320 = 0
                if bens[address(msg.sender)].field_0 < bens[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                bens[address(msg.sender)].field_0 = 0
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, bens[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bens[address(msg.sender)].field_0
    else:
        require block.number > sub_c1493a31
        if bens[address(msg.sender)].field_128 > 0xb9f48036bf5794b4fb5f80c7dde2a1a1795b7836b25a0408462:
            revert with 'NH{q', 17
        if block.number < sub_c1493a31:
            revert with 'NH{q', 17
        if block.number - sub_c1493a31 and 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18 > -1 / block.number - sub_c1493a31:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= bens[address(msg.sender)].field_0:
            if (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) <= ext_call.return_data[0]:
                bens[address(msg.sender)].field_256 = uint64(block.number)
                bens[address(msg.sender)].field_320 = 0
                if bens[address(msg.sender)].field_0 < uint128((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)):
                    revert with 'NH{q', 17
                bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - uint128((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)))
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return ((block.number * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18) - (sub_c1493a31 * 62 * 10^14 * bens[address(msg.sender)].field_128 / 100000 * 10^18))
        else:
            if bens[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                bens[address(msg.sender)].field_256 = uint64(block.number)
                bens[address(msg.sender)].field_320 = 0
                if bens[address(msg.sender)].field_0 < bens[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                bens[address(msg.sender)].field_0 = 0
                require ext_code.size(stor2)
                call stor2.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, bens[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bens[address(msg.sender)].field_0
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    bens[address(msg.sender)].field_256 = uint64(block.number)
    bens[address(msg.sender)].field_320 = 0
    if bens[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
        revert with 'NH{q', 17
    bens[address(msg.sender)].field_0 = uint128(bens[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
    require ext_code.size(stor2)
    call stor2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function claimAirdrop() payable {
    airdrops[address(msg.sender)].field_128 = uint128(block.number)
    require airdrops[address(msg.sender)].field_0 > 0
    require sub_c1493a31
    if sub_c1493a31 <= airdrops[address(msg.sender)].field_128:
        require block.number > airdrops[address(msg.sender)].field_128
        if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
            airdrops[address(msg.sender)].field_0 = 0
            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
            require ext_code.size(stor2)
            call stor2.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, airdrops[address(msg.sender)].field_0
        else:
            if block.number < airdrops[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if block.number - airdrops[address(msg.sender)].field_128 and 124 * 10^14 > -1 / block.number - airdrops[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if not totalAirdrops:
                revert with 'NH{q', 18
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
                if (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops):
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops))
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < airdrops[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = 0
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, airdrops[address(msg.sender)].field_0
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    else:
        require block.number > sub_c1493a31
        if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
            airdrops[address(msg.sender)].field_0 = 0
            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
            require ext_code.size(stor2)
            call stor2.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, airdrops[address(msg.sender)].field_0
        else:
            if block.number < sub_c1493a31:
                revert with 'NH{q', 17
            if block.number - sub_c1493a31 and 124 * 10^14 > -1 / block.number - sub_c1493a31:
                revert with 'NH{q', 17
            if not totalAirdrops:
                revert with 'NH{q', 18
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
                if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops):
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops))
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < airdrops[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = 0
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, airdrops[address(msg.sender)].field_0
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2168b154(?) payable {
    require not stor12[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.deposits(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stor3)
        call stor3.getNodeNumberOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stor3)
            call stor3.getRewardAmountOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    stor12[address(msg.sender)] = 1
                    if airdrops[address(msg.sender)].field_0 > test266151307():
                        revert with 'NH{q', 17
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    stor12[address(msg.sender)] = 1
                    if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(254, 0, ext_call.return_data[0]) and 10 > -1 / 4 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * ext_call.return_data[0] / 10))
            else:
                if 0 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    stor12[address(msg.sender)] = 1
                    if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(254, 0, ext_call.return_data[0]) and 10 > -1 / 4 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * ext_call.return_data[0] / 10))
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    stor12[address(msg.sender)] = 1
                    if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(253, 0, ext_call.return_data[0]) and 10 > -1 / 8 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 8 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 8 * ext_call.return_data[0] / 10))
        else:
            if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                if 0 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 3 * ext_call.return_data[0]) and 11 > -1 / 4 * 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 3 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 0 > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if 10 * 10^18 * ext_call.return_data[0] and 4 > -1 / 10 * 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10 * 10^18 * ext_call.return_data[0]) and 10 > -1 / 4 * 10 * 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                else:
                    if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
    else:
        require ext_code.size(stor4)
        call stor4.claimed(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.getNodeNumberOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if airdrops[address(msg.sender)].field_0 > test266151307():
                            revert with 'NH{q', 17
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 0 > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                else:
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, ext_call.return_data[0]) and 12 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 4 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 4 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 12 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 8 * ext_call.return_data[0] / 10))
                    else:
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 12 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 8 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 3 * ext_call.return_data[0]) and 12 > -1 / 4 * 3 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 4 * 3 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if 10 * 10^18 * ext_call.return_data[0] and 4 > -1 / 10 * 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10 * 10^18 * ext_call.return_data[0]) and 11 > -1 / 4 * 10 * 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                    else:
                        if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
        else:
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 13 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor12[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor12[address(msg.sender)] = 1
                        if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 3 * ext_call.return_data[0]) and 13 > -1 / 4 * 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 3 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if Mask(254, 0, ext_call.return_data[0]) and 4 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(252, 0, ext_call.return_data[0]) and 13 > -1 / 16 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 16 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 16 * ext_call.return_data[0] / 10))
                    else:
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if Mask(254, 0, ext_call.return_data[0]) and 4 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(252, 0, ext_call.return_data[0]) and 13 > -1 / 16 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 16 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 16 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 4 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 5 * ext_call.return_data[0] and 4 > -1 / 5 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 5 * ext_call.return_data[0]) and 13 > -1 / 4 * 5 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 5 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 5 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
                    else:
                        if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000002 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor12[address(msg.sender)] = 1
                            if 10000000000000000003 * ext_call.return_data[0] and 4 > -1 / 10000000000000000003 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000003 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000003 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000003 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000003 * ext_call.return_data[0] / 10))
    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
        if airdrops[address(msg.sender)].field_0 >= 100 * 10^18:
            if totalAirdrops > -2:
                revert with 'NH{q', 17
            totalAirdrops++
    if not airdrops[address(msg.sender)].field_128:
        airdrops[address(msg.sender)].field_128 = uint128(block.number)
}



}
