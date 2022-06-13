contract main {




// =====================  Runtime code  =====================


#
#  - fillOrder(uint256 arg1, address arg2)
#  - orders(uint256 arg1)
#
address stor0;
mapping of uint8 stor1;
uint8 stor2;
address WETHAddress; offset 8
address routerAddress;
array of struct stor4;
array of struct sub_10e0268d;
mapping of uint256 stor6;
array of struct sub_02181e26;
array of struct sub_2c65ad49;

function sub_02181e26(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_02181e26[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_02181e26[address(arg1)][arg2].field_0
}

function sub_10e0268d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_10e0268d.length:
        revert with 'NH{q', 50
    return sub_10e0268d[arg1].field_0
}

function sub_2c65ad49(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2c65ad49[address(arg1)].field_0
}

function sub_2cc75967(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_02181e26[address(arg1)].field_0
}

function paused() {
    return bool(stor2)
}

function sub_7f71f3cb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_2c65ad49[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_2c65ad49[address(arg1)][arg2].field_0
}

function getOrderCount() {
    return stor4.length
}

function WETH() {
    return WETHAddress
}

function sub_c706bd82(?) {
    return sub_10e0268d.length
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    routerAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[stor0] = 0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function pause() {
    if not stor2:
        require stor1[address(msg.sender)]
        stor2 = 1
        emit Paused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        stor2 = 1
        emit Paused()
}

function unpause() {
    if stor2:
        require stor1[address(msg.sender)]
        stor2 = 0
        emit Unpaused()
    else:
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        stor2 = 0
        emit Unpaused()
}

function sub_4bc8d2c0(?) {
    if sub_10e0268d.length:
        mem[128] = uint256(sub_10e0268d.field_0)
        idx = 128
        s = 0
        while (32 * sub_10e0268d.length) + 96 > idx:
            mem[idx + 32] = sub_10e0268d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_10e0268d.length, data=mem[128 len 32 * sub_10e0268d.length])
    mem[(32 * sub_10e0268d.length) + 128] = 32
    mem[(32 * sub_10e0268d.length) + 160] = sub_10e0268d.length
    mem[(32 * sub_10e0268d.length) + 192 len 32 * sub_10e0268d.length] = mem[128 len 32 * sub_10e0268d.length]
    return memory
      from (32 * sub_10e0268d.length) + 128
       len (96 * sub_10e0268d.length) + 64
}

function sub_73aee0a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_2c65ad49[address(arg1)].field_0:
        mem[128] = sub_2c65ad49[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_2c65ad49[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_2c65ad49[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_2c65ad49[address(arg1)].field_0, data=mem[128 len 32 * sub_2c65ad49[address(arg1)].field_0])
    mem[(32 * sub_2c65ad49[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_2c65ad49[address(arg1)].field_0) + 160] = sub_2c65ad49[address(arg1)].field_0
    mem[(32 * sub_2c65ad49[address(arg1)].field_0) + 192 len 32 * sub_2c65ad49[address(arg1)].field_0] = mem[128 len 32 * sub_2c65ad49[address(arg1)].field_0]
    return memory
      from (32 * sub_2c65ad49[address(arg1)].field_0) + 128
       len (96 * sub_2c65ad49[address(arg1)].field_0) + 64
}

function sub_efcb91ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_02181e26[address(arg1)].field_0:
        mem[128] = sub_02181e26[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_02181e26[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_02181e26[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_02181e26[address(arg1)].field_0, data=mem[128 len 32 * sub_02181e26[address(arg1)].field_0])
    mem[(32 * sub_02181e26[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_02181e26[address(arg1)].field_0) + 160] = sub_02181e26[address(arg1)].field_0
    mem[(32 * sub_02181e26[address(arg1)].field_0) + 192 len 32 * sub_02181e26[address(arg1)].field_0] = mem[128 len 32 * sub_02181e26[address(arg1)].field_0]
    return memory
      from (32 * sub_02181e26[address(arg1)].field_0) + 128
       len (96 * sub_02181e26[address(arg1)].field_0) + 64
}

function sub_ec32ee72(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 7
    if stor2:
        require stor1[address(msg.sender)]
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if arg2 > 6:
        revert with 'NH{q', 33
    if arg2 == 2:
        if stor4[arg1].field_0 != msg.sender:
            revert with 0, ''
    else:
        if arg2 > 6:
            revert with 'NH{q', 33
        if arg2 == 3:
            if stor4[arg1].field_2560 >= block.timestamp:
                revert with 0, ''
        else:
            if arg2 > 6:
                revert with 'NH{q', 33
            if arg2 == 4:
                if stor4[arg1].field_768 > 2:
                    revert with 'NH{q', 33
                if not stor4[arg1].field_768:
                    revert with 0, ''
                require ext_code.size(stor4[arg1].field_776)
                staticcall stor4[arg1].field_776.0x70a08231 with:
                        gas gas_remaining wei
                       args stor4[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= stor4[arg1].field_256:
                    revert with 0, ''
            else:
                if arg2 > 6:
                    revert with 'NH{q', 33
                if arg2 != 5:
                    if arg2 > 6:
                        revert with 'NH{q', 33
                    if arg2 != 6:
                        revert with 0, ''
                    if routerAddress != msg.sender:
                        revert with 0, ''
                else:
                    if stor4[arg1].field_768 > 2:
                        revert with 'NH{q', 33
                    if not stor4[arg1].field_768:
                        revert with 0, ''
                    require ext_code.size(stor4[arg1].field_776)
                    staticcall stor4[arg1].field_776.0xdd62ed3e with:
                            gas gas_remaining wei
                           args stor4[arg1].field_0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= stor4[arg1].field_256:
                        revert with 0, ''
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_2048 > 6:
        revert with 'NH{q', 33
    if stor4[arg1].field_2048:
        revert with 0, ''
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if arg2 > 6:
        revert with 'NH{q', 33
    stor4[arg1].field_2048 = arg2 or Mask(248, 8, stor4[arg1].field_2048)
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[arg1].field_2304 = block.timestamp
    if not stor6[arg1]:
        revert with 0, 'OrderList: ITEM_NOT_PRESENT'
    if sub_10e0268d.length < 1:
        revert with 'NH{q', 17
    if sub_10e0268d.length - 1 >= sub_10e0268d.length:
        revert with 'NH{q', 50
    if stor6[arg1] < 1:
        revert with 'NH{q', 17
    if stor6[arg1] - 1 >= sub_10e0268d.length:
        revert with 'NH{q', 50
    sub_10e0268d[stor6[arg1]].field_0 = sub_10e0268d[sub_10e0268d.length].field_0
    if sub_10e0268d.length < 1:
        revert with 'NH{q', 17
    if sub_10e0268d.length - 1 >= sub_10e0268d.length:
        revert with 'NH{q', 50
    stor6[stor5[stor5.length].field_0] = stor6[arg1]
    if not sub_10e0268d.length:
        revert with 'NH{q', 49
    sub_10e0268d[sub_10e0268d.length].field_0 = 0
    sub_10e0268d.length--
    stor6[arg1] = 0
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if not sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0:
        revert with 0, 'OrderList: ITEM_NOT_PRESENT'
    if sub_2c65ad49[stor4[arg1].field_0].field_0 < 1:
        revert with 'NH{q', 17
    if sub_2c65ad49[stor4[arg1].field_0].field_0 - 1 >= sub_2c65ad49[stor4[arg1].field_0].field_0:
        revert with 'NH{q', 50
    if sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0 < 1:
        revert with 'NH{q', 17
    if sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0 - 1 >= sub_2c65ad49[stor4[arg1].field_0].field_0:
        revert with 'NH{q', 50
    sub_2c65ad49[stor4[arg1].field_0][sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0].field_0 = sub_2c65ad49[stor4[arg1].field_0][sub_2c65ad49[stor4[arg1].field_0].field_0].field_0
    if sub_2c65ad49[stor4[arg1].field_0].field_0 < 1:
        revert with 'NH{q', 17
    if sub_2c65ad49[stor4[arg1].field_0].field_0 - 1 >= sub_2c65ad49[stor4[arg1].field_0].field_0:
        revert with 'NH{q', 50
    sub_2c65ad49[stor4[arg1].field_0][1][sub_2c65ad49[stor4[arg1].field_0][sub_2c65ad49[stor4[arg1].field_0].field_0].field_0].field_0 = sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0
    if not sub_2c65ad49[stor4[arg1].field_0].field_0:
        revert with 'NH{q', 49
    sub_2c65ad49[stor4[arg1].field_0][sub_2c65ad49[stor4[arg1].field_0].field_0].field_0 = 0
    sub_2c65ad49[stor4[arg1].field_0].field_0--
    sub_2c65ad49[stor4[arg1].field_0][1][arg1].field_0 = 0
    if stor4[arg1].field_768 > 2:
        revert with 'NH{q', 33
    if not stor4[arg1].field_768:
        call stor4[arg1].field_0 with:
           value stor4[arg1].field_256 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: NATIVE_TRANSFER_FAILED'
}

function sub_d4921084(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 352
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == ('cd', 4)[0]
    require ('cd', 4)[1] == ('cd', 4)[1]
    require ('cd', 4)[2] < 3
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == address(('cd', 4)[4])
    require ('cd', 4)[5] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[5] - 4 >= 96
    require cd[(cd[4] + ('cd', 4)[5] + 4)] == cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[(cd[4] + ('cd', 4)[5] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545 < 544:
        revert with 'NH{q', 65
    mem[544] = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 36
    t = 576
    while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(cd[4] + ('cd', 4)[5] + 68)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546 > test266151307() or floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546 < 545:
        revert with 'NH{q', 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 545] = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 36
    t = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577
    while idx < cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[6] < 7
    require ('cd', 4)[7] == ('cd', 4)[7]
    require ('cd', 4)[8] == ('cd', 4)[8]
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[9] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 547 < 546:
        revert with 'NH{q', 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 546] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 578 len cd[(cd[4] + ('cd', 4)[9] + 4)]] = call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]]
    mem[floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 578] = 0
    require msg.sender == routerAddress
    if stor2:
        require stor1[address(msg.sender)]
    if ('cd', 4)[2] > 2:
        revert with 'NH{q', 33
    if not ('cd', 4)[2]:
        if ('cd', 4)[0] != msg.value:
            revert with 'NH{q', 1
    else:
        if msg.value:
            revert with 'NH{q', 1
    stor4.length++
    stor4[stor4.length].field_0 = address(('cd', 4).length)
    stor4[stor4.length].field_256 = ('cd', 4)[0]
    stor4[stor4.length].field_512 = ('cd', 4)[1]
    if ('cd', 4)[2] > 2:
        revert with 'NH{q', 33
    stor4[stor4.length].field_768 = ('cd', 4)[2]
    stor4[stor4.length].field_776 = address(('cd', 4)[3])
    stor4[stor4.length].field_1024 = address(('cd', 4)[4])
    stor4[stor4.length].field_1280 = cd[(cd[4] + ('cd', 4)[5] + 4)]
    stor4[stor4.length].field_1536 = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]
    if not cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]:
        idx = 0
        while stor4[stor4.length].field_1536 > idx:
            stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 576
        while (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 576 > idx:
            stor[s + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 6)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 31) >> 5
        while stor4[stor4.length].field_1536 > idx:
            stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_1792 = cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]
    if not cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]:
        idx = 0
        while stor4[stor4.length].field_1792 > idx:
            stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 7)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + 577
        while floor32(cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 36)] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 577 > idx:
            stor[s + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 7)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 68)] + 4)]) + 31) >> 5
        while stor4[stor4.length].field_1792 > idx:
            stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 7)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_2048 = 0
    stor4[stor4.length].field_2304 = 0
    stor4[stor4.length].field_2304 = block.timestamp
    stor4[stor4.length].field_2560 = ('cd', 4)[8]
    if stor4[stor4.length].field_2816:
        if stor4[stor4.length].field_2816 == stor4[stor4.length].field_2817 < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4)[9] + 4)]:
            stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) + 11)][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[9] + 4)], data=call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]])
        else:
            stor4[stor4.length].field_2816 = 0
            idx = 0
            while stor4[stor4.length].field_2817 + 31 / 32 > idx:
                stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 11)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_2816 == stor4[stor4.length].field_2817 < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4)[9] + 4)]:
            stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) + 11)][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[9] + 4)], data=call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]])
        else:
            stor4[stor4.length].field_2816 = 0
            idx = 0
            while stor4[stor4.length].field_2817 + 31 / 32 > idx:
                stor[idx + sha3((12 * stor4.length) + ('name', 'stor4', 4) + 11)].field_0 = 0
                idx = idx + 1
                continue 
    sub_02181e26[address(('cd', 4).length)].field_0++
    sub_02181e26[address(('cd', 4).length)][sub_02181e26[address(('cd', 4).length)].field_0].field_0 = stor4.length
    if stor6[stor4.length]:
        revert with 0, 'OrderList: ITEM_EXISTS'
    sub_10e0268d.length++
    sub_10e0268d[sub_10e0268d.length].field_0 = stor4.length
    stor6[stor4.length] = sub_10e0268d.length
    if sub_2c65ad49[address(('cd', 4).length)][1][stor4.length].field_0:
        revert with 0, 'OrderList: ITEM_EXISTS'
    sub_2c65ad49[address(('cd', 4).length)].field_0++
    sub_2c65ad49[address(('cd', 4).length)][sub_2c65ad49[address(('cd', 4).length)].field_0].field_0 = stor4.length
    sub_2c65ad49[address(('cd', 4).length)][1][stor4.length].field_0 = sub_2c65ad49[address(('cd', 4).length)].field_0
    return stor4.length
}

function getOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[448] = 0
    mem[480] = 96
    mem[512] = 96
    mem[288] = 448
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 96
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    mem[0] = 4
    mem[544] = stor4[arg1].field_0
    mem[576] = stor4[arg1].field_256
    mem[608] = stor4[arg1].field_512
    if stor4[arg1].field_768 > 2:
        revert with 'NH{q', 33
    mem[640] = stor4[arg1].field_768
    mem[672] = stor4[arg1].field_776
    mem[704] = stor4[arg1].field_1024
    mem[896] = stor4[arg1].field_1280
    mem[992] = stor4[arg1].field_1536
    if not stor4[arg1].field_1536:
        mem[928] = 992
        mem[(32 * stor4[arg1].field_1536) + 1024] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[960] = (32 * stor4[arg1].field_1536) + 1024
            mem[736] = 896
            if stor4[arg1].field_2048 > 6:
                revert with 'NH{q', 33
            mem[768] = stor4[arg1].field_2048
            mem[800] = stor4[arg1].field_2304
            mem[832] = stor4[arg1].field_2560
            if stor4[arg1].field_2816:
                if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                    revert with 'NH{q', 34
                mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
                if stor4[arg1].field_2816:
                    if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_2817:
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                    else:
                        if 31 >= stor4[arg1].field_2817:
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                            if stor4[arg1].field_768 >= 3:
                                revert with 'NH{q', 33
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                        else:
                            mem[0] = (12 * arg1) + sha3(4) + 11
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                            s = 0
                            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                            if stor4[arg1].field_768 >= 3:
                                revert with 'NH{q', 33
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                else:
                    if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_2817:
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                    else:
                        if 31 >= stor4[arg1].field_2817:
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                            if stor4[arg1].field_768 >= 3:
                                revert with 'NH{q', 33
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                        else:
                            mem[0] = (12 * arg1) + sha3(4) + 11
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                            s = 0
                            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                            if stor4[arg1].field_768 >= 3:
                                revert with 'NH{q', 33
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < mem[(32 * stor4[arg1].field_1536) + 1024]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 512
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return 32, stor4[arg1].field_0, 
                       stor4[arg1].field_256,
                       stor4[arg1].field_512,
                       stor4[arg1].field_768,
                       stor4[arg1].field_768,
                       stor4[arg1].field_1024,
                       352,
                       stor4[arg1].field_2048,
                       stor4[arg1].field_2304,
                       stor4[arg1].field_2560,
                       (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 512,
                       stor4[arg1].field_1280,
                       96,
                       (32 * stor4[arg1].field_1536) + 128,
                       stor4[arg1].field_1536,
                       mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600 len (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 32],
                       mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056],
                       mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
            if stor4[arg1].field_2816:
                if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                else:
                    if 31 >= stor4[arg1].field_2817:
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                    else:
                        mem[0] = (12 * arg1) + sha3(4) + 11
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                        s = 0
                        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            else:
                if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                else:
                    if 31 >= stor4[arg1].field_2817:
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_776
                    else:
                        mem[0] = (12 * arg1) + sha3(4) + 11
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                        s = 0
                        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                        if stor4[arg1].field_768 >= 3:
                            revert with 'NH{q', 33
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = (32 * stor4[arg1].field_1536) + 1056
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < mem[(32 * stor4[arg1].field_1536) + 1024]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if stor4[arg1].field_2048 >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 512
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
            return 32, stor4[arg1].field_0, 
                   stor4[arg1].field_256,
                   stor4[arg1].field_512,
                   stor4[arg1].field_768,
                   stor4[arg1].field_768,
                   stor4[arg1].field_1024,
                   352,
                   stor4[arg1].field_2048,
                   stor4[arg1].field_2304,
                   stor4[arg1].field_2560,
                   (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 512,
                   stor4[arg1].field_1280,
                   96,
                   (32 * stor4[arg1].field_1536) + 128,
                   stor4[arg1].field_1536,
                   mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600 len (32 * stor4[arg1].field_1536) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 32],
                   mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056],
                   mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * mem[(32 * stor4[arg1].field_1536) + 1024]) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
        mem[(32 * stor4[arg1].field_1536) + 1056] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 7)].field_0
        idx = (32 * stor4[arg1].field_1536) + 1056
        s = 0
        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1024 > idx:
            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 7)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[960] = (32 * stor4[arg1].field_1536) + 1024
        mem[736] = 896
        if stor4[arg1].field_2048 > 6:
            revert with 'NH{q', 33
        mem[768] = stor4[arg1].field_2048
        mem[800] = stor4[arg1].field_2304
        mem[832] = stor4[arg1].field_2560
        if stor4[arg1].field_2816:
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
            if stor4[arg1].field_2816:
                if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                    idx = 0
                    s = 1024
                    t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                    while idx < stor4[arg1].field_1536:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                    idx = 0
                    s = (32 * stor4[arg1].field_1536) + 1056
                    t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                    while idx < stor4[arg1].field_1792:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if stor4[arg1].field_2048 >= 7:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                    if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                    return memory
                      from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                       len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
                if 31 >= stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                    idx = 0
                    s = 1024
                    t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                    while idx < stor4[arg1].field_1536:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                    idx = 0
                    s = (32 * stor4[arg1].field_1536) + 1056
                    t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                    while idx < stor4[arg1].field_1792:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if stor4[arg1].field_2048 >= 7:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                    if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                    return memory
                      from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                       len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
                mem[0] = (12 * arg1) + sha3(4) + 11
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                s = 0
                while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = mem[960] + 32
                t = mem[64] + (32 * mem[992]) + 544
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[768] >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                _2284 = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2284)] = mem[mem[864] + 32 len ceil32(_2284)]
                if ceil32(_2284) > _2284:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2284 + 1664] = 0
                return memory
                  from mem[64]
                   len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2284) + -mem[64] + 1664
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            if 31 >= stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            mem[0] = (12 * arg1) + sha3(4) + 11
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
            s = 0
            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = mem[928] + 32
            t = mem[64] + 512
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            _1655 = mem[mem[960]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
            idx = 0
            s = mem[960] + 32
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < _1655:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _1655) + 512
            _2285 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1655) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1655) + 1664 len ceil32(_2285)] = mem[mem[864] + 32 len ceil32(_2285)]
            if ceil32(_2285) > _2285:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1655) + _2285 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1655) + ceil32(_2285) + -mem[64] + 1664
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
        if stor4[arg1].field_2816:
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            if 31 >= stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            mem[0] = (12 * arg1) + sha3(4) + 11
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
            s = 0
            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = mem[960] + 32
            t = mem[64] + (32 * mem[992]) + 544
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            _2286 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2286)] = mem[mem[864] + 32 len ceil32(_2286)]
            if ceil32(_2286) > _2286:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2286 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2286) + -mem[64] + 1664
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = (32 * stor4[arg1].field_1536) + 1056
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if stor4[arg1].field_2048 >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
            return memory
              from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
               len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
        if 31 >= stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = (32 * stor4[arg1].field_1536) + 1056
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if stor4[arg1].field_2048 >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
            return memory
              from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
               len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
        mem[0] = (12 * arg1) + sha3(4) + 11
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
        s = 0
        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = mem[928] + 32
        t = mem[64] + 512
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        _1657 = mem[mem[960]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
        idx = 0
        s = mem[960] + 32
        t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
        while idx < _1657:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[768] >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _1657) + 512
        _2287 = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1657) + 1632] = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1657) + 1664 len ceil32(_2287)] = mem[mem[864] + 32 len ceil32(_2287)]
        if ceil32(_2287) > _2287:
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1657) + _2287 + 1664] = 0
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1657) + ceil32(_2287) + -mem[64] + 1664
    mem[1024] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 6)].field_0
    idx = 1024
    s = 0
    while (32 * stor4[arg1].field_1536) + 992 > idx:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 6)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[928] = 992
    mem[(32 * stor4[arg1].field_1536) + 1024] = stor4[arg1].field_1792
    if not stor4[arg1].field_1792:
        mem[960] = (32 * stor4[arg1].field_1536) + 1024
        mem[736] = 896
        if stor4[arg1].field_2048 > 6:
            revert with 'NH{q', 33
        mem[768] = stor4[arg1].field_2048
        mem[800] = stor4[arg1].field_2304
        mem[832] = stor4[arg1].field_2560
        if stor4[arg1].field_2816:
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
            if stor4[arg1].field_2816:
                if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                    idx = 0
                    s = 1024
                    t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                    while idx < stor4[arg1].field_1536:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                    idx = 0
                    s = (32 * stor4[arg1].field_1536) + 1056
                    t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                    while idx < stor4[arg1].field_1792:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if stor4[arg1].field_2048 >= 7:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                    if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                    return memory
                      from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                       len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
                if 31 >= stor4[arg1].field_2817:
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                    if stor4[arg1].field_768 >= 3:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                    idx = 0
                    s = 1024
                    t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                    while idx < stor4[arg1].field_1536:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                    idx = 0
                    s = (32 * stor4[arg1].field_1536) + 1056
                    t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                    while idx < stor4[arg1].field_1792:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if stor4[arg1].field_2048 >= 7:
                        revert with 'NH{q', 33
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                    if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                    return memory
                      from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                       len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
                mem[0] = (12 * arg1) + sha3(4) + 11
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
                idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
                s = 0
                while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                    mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = mem[928] + 32
                t = mem[64] + 512
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                _1658 = mem[mem[960]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
                idx = 0
                s = mem[960] + 32
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < _1658:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[768] >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _1658) + 512
                _2288 = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1658) + 1632] = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1658) + 1664 len ceil32(_2288)] = mem[mem[864] + 32 len ceil32(_2288)]
                if ceil32(_2288) > _2288:
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1658) + _2288 + 1664] = 0
                return memory
                  from mem[64]
                   len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1658) + ceil32(_2288) + -mem[64] + 1664
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            if 31 >= stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            mem[0] = (12 * arg1) + sha3(4) + 11
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
            s = 0
            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = mem[928] + 32
            t = mem[64] + 512
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            _1659 = mem[mem[960]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
            idx = 0
            s = mem[960] + 32
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < _1659:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _1659) + 512
            _2289 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1659) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1659) + 1664 len ceil32(_2289)] = mem[mem[864] + 32 len ceil32(_2289)]
            if ceil32(_2289) > _2289:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1659) + _2289 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1659) + ceil32(_2289) + -mem[64] + 1664
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
        if not stor4[arg1].field_2816:
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            if 31 >= stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = (32 * stor4[arg1].field_1536) + 1056
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if stor4[arg1].field_2048 >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
                if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
                return memory
                  from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
                   len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
            mem[0] = (12 * arg1) + sha3(4) + 11
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
            s = 0
            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = mem[960] + 32
            t = mem[64] + (32 * mem[992]) + 544
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            _2291 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2291)] = mem[mem[864] + 32 len ceil32(_2291)]
            if ceil32(_2291) > _2291:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2291 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2291) + -mem[64] + 1664
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = (32 * stor4[arg1].field_1536) + 1056
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if stor4[arg1].field_2048 >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
            return memory
              from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
               len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
        if 31 >= stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = (32 * stor4[arg1].field_1536) + 1056
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if stor4[arg1].field_2048 >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
            if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
            return memory
              from (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
               len (96 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 576
        mem[0] = (12 * arg1) + sha3(4) + 11
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
        s = 0
        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = mem[928] + 32
        t = mem[64] + 512
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        _1660 = mem[mem[960]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
        idx = 0
        s = mem[960] + 32
        t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
        while idx < _1660:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[768] >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _1660) + 512
        _2290 = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1660) + 1632] = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1660) + 1664 len ceil32(_2290)] = mem[mem[864] + 32 len ceil32(_2290)]
        if ceil32(_2290) > _2290:
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1660) + _2290 + 1664] = 0
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _1660) + ceil32(_2290) + -mem[64] + 1664
    mem[0] = (12 * arg1) + sha3(4) + 7
    mem[(32 * stor4[arg1].field_1536) + 1056] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 7)].field_0
    idx = (32 * stor4[arg1].field_1536) + 1056
    s = 0
    while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1024 > idx:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[960] = (32 * stor4[arg1].field_1536) + 1024
    mem[736] = 896
    if stor4[arg1].field_2048 > 6:
        revert with 'NH{q', 33
    mem[768] = stor4[arg1].field_2048
    mem[800] = stor4[arg1].field_2304
    mem[832] = stor4[arg1].field_2560
    if stor4[arg1].field_2816:
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
        if not stor4[arg1].field_2816:
            if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_2817:
                mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = mem[64] + 512
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                _2190 = mem[mem[960]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
                idx = 0
                s = mem[960] + 32
                t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
                while idx < _2190:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[768] >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2190) + 512
                _2531 = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2190) + 1632] = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2190) + 1664 len ceil32(_2531)] = mem[mem[864] + 32 len ceil32(_2531)]
                if ceil32(_2531) > _2531:
                    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2190) + _2531 + 1664] = 0
                return memory
                  from mem[64]
                   len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2190) + ceil32(_2531) + -mem[64] + 1664
            if 31 >= stor4[arg1].field_2817:
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
                mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
                if stor4[arg1].field_768 >= 3:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
                idx = 0
                s = 1024
                t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
                while idx < stor4[arg1].field_1536:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
                idx = 0
                s = mem[960] + 32
                t = mem[64] + (32 * mem[992]) + 544
                while idx < stor4[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[768] >= 7:
                    revert with 'NH{q', 33
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
                mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
                _2533 = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2533)] = mem[mem[864] + 32 len ceil32(_2533)]
                if ceil32(_2533) > _2533:
                    mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2533 + 1664] = 0
                return memory
                  from mem[64]
                   len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2533) + -mem[64] + 1664
            mem[0] = (12 * arg1) + sha3(4) + 11
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
            idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
            s = 0
            while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
                mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = mem[960] + 32
            t = mem[64] + (32 * mem[992]) + 544
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            _2633 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2633)] = mem[mem[864] + 32 len ceil32(_2633)]
            if ceil32(_2633) > _2633:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2633 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2633) + -mem[64] + 1664
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_2817:
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = mem[64] + 512
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            _2188 = mem[mem[960]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
            idx = 0
            s = mem[960] + 32
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < _2188:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2188) + 512
            _2528 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2188) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2188) + 1664 len ceil32(_2528)] = mem[mem[864] + 32 len ceil32(_2528)]
            if ceil32(_2528) > _2528:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2188) + _2528 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2188) + ceil32(_2528) + -mem[64] + 1664
        if 31 >= stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = mem[64] + 512
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            _2189 = mem[mem[960]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
            idx = 0
            s = mem[960] + 32
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < _2189:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2189) + 512
            _2530 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2189) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2189) + 1664 len ceil32(_2530)] = mem[mem[864] + 32 len ceil32(_2530)]
            if ceil32(_2530) > _2530:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2189) + _2530 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2189) + ceil32(_2530) + -mem[64] + 1664
        mem[0] = (12 * arg1) + sha3(4) + 11
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
        s = 0
        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = mem[928] + 32
        t = mem[64] + 512
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        _2476 = mem[mem[960]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
        idx = 0
        s = mem[960] + 32
        t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
        while idx < _2476:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[768] >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2476) + 512
        _2632 = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2476) + 1632] = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2476) + 1664 len ceil32(_2632)] = mem[mem[864] + 32 len ceil32(_2632)]
        if ceil32(_2632) > _2632:
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2476) + _2632 + 1664] = 0
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2476) + ceil32(_2632) + -mem[64] + 1664
    if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
        revert with 'NH{q', 34
    mem[64] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] = stor4[arg1].field_2817
    if not stor4[arg1].field_2816:
        if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_2817:
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = mem[64] + 512
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            _2194 = mem[mem[960]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
            idx = 0
            s = mem[960] + 32
            t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
            while idx < _2194:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2194) + 512
            _2537 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2194) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2194) + 1664 len ceil32(_2537)] = mem[mem[864] + 32 len ceil32(_2537)]
            if ceil32(_2537) > _2537:
                mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2194) + _2537 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2194) + ceil32(_2537) + -mem[64] + 1664
        if 31 >= stor4[arg1].field_2817:
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
            mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
            if stor4[arg1].field_768 >= 3:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
            idx = 0
            s = 1024
            t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
            while idx < stor4[arg1].field_1536:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
            idx = 0
            s = mem[960] + 32
            t = mem[64] + (32 * mem[992]) + 544
            while idx < stor4[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[768] >= 7:
                revert with 'NH{q', 33
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
            mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
            _2539 = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2539)] = mem[mem[864] + 32 len ceil32(_2539)]
            if ceil32(_2539) > _2539:
                mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2539 + 1664] = 0
            return memory
              from mem[64]
               len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2539) + -mem[64] + 1664
        mem[0] = (12 * arg1) + sha3(4) + 11
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
        idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
        s = 0
        while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
            mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = 1024
        t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
        idx = 0
        s = mem[960] + 32
        t = mem[64] + (32 * mem[992]) + 544
        while idx < stor4[arg1].field_1792:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[768] >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
        _2635 = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(_2635)] = mem[mem[864] + 32 len ceil32(_2635)]
        if ceil32(_2635) > _2635:
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + _2635 + 1664] = 0
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + ceil32(_2635) + -mem[64] + 1664
    if stor4[arg1].field_2816 == stor4[arg1].field_2817 < 32:
        revert with 'NH{q', 34
    if not stor4[arg1].field_2817:
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = 1024
        t = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = stor4[arg1].field_1792
        idx = 0
        s = (32 * stor4[arg1].field_1536) + 1056
        t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
        while idx < stor4[arg1].field_1792:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if stor4[arg1].field_2048 >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = stor4[arg1].field_2048
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = stor4[arg1].field_2304
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = stor4[arg1].field_2560
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512
        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]
        mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1664 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])] = mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088 len ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056])]
        if ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) > mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]:
            mem[(64 * stor4[arg1].field_1536) + (64 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056] + 1664] = 0
        return 32, stor4[arg1].field_0, 
               stor4[arg1].field_256,
               stor4[arg1].field_512,
               stor4[arg1].field_768,
               stor4[arg1].field_768,
               stor4[arg1].field_1024,
               352,
               stor4[arg1].field_2048,
               stor4[arg1].field_2304,
               stor4[arg1].field_2560,
               (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 512,
               stor4[arg1].field_1280,
               96,
               (32 * stor4[arg1].field_1536) + 128,
               mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568 len (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056]) + 96]
    if 31 >= stor4[arg1].field_2817:
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = 256 * stor4[arg1].field_2824
        mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
        if stor4[arg1].field_768 >= 3:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
        idx = 0
        s = 1024
        t = mem[64] + 512
        while idx < stor4[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
        _2193 = mem[mem[960]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
        idx = 0
        s = mem[960] + 32
        t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
        while idx < _2193:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[768] >= 7:
            revert with 'NH{q', 33
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
        mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2193) + 512
        _2536 = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2193) + 1632] = mem[mem[864]]
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2193) + 1664 len ceil32(_2536)] = mem[mem[864] + 32 len ceil32(_2536)]
        if ceil32(_2536) > _2536:
            mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2193) + _2536 + 1664] = 0
        return memory
          from mem[64]
           len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2193) + ceil32(_2536) + -mem[64] + 1664
    mem[0] = (12 * arg1) + sha3(4) + 11
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088] = stor[sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_0
    idx = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1088
    s = 0
    while (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + stor4[arg1].field_2817 + 1056 > idx:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'stor4', 4) + 11)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[864] = (32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + 1056
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1088] = 32
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1120] = stor4[arg1].field_0
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1152] = stor4[arg1].field_256
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1184] = stor4[arg1].field_512
    if stor4[arg1].field_768 >= 3:
        revert with 'NH{q', 33
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1216] = stor4[arg1].field_768
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1248] = stor4[arg1].field_768
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1280] = stor4[arg1].field_1024
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1312] = 352
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1472] = stor4[arg1].field_1280
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1504] = 96
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1568] = stor4[arg1].field_1536
    idx = 0
    s = mem[928] + 32
    t = mem[64] + 512
    while idx < stor4[arg1].field_1536:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1536] = (32 * stor4[arg1].field_1536) + 128
    _2478 = mem[mem[960]]
    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1600] = mem[mem[960]]
    idx = 0
    s = mem[960] + 32
    t = (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1632
    while idx < _2478:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[768] >= 7:
        revert with 'NH{q', 33
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1344] = mem[768]
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1376] = mem[800]
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1408] = mem[832]
    mem[(32 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + 1440] = (32 * stor4[arg1].field_1536) + (32 * _2478) + 512
    _2634 = mem[mem[864]]
    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2478) + 1632] = mem[mem[864]]
    mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2478) + 1664 len ceil32(_2634)] = mem[mem[864] + 32 len ceil32(_2634)]
    if ceil32(_2634) > _2634:
        mem[(64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2478) + _2634 + 1664] = 0
    return memory
      from mem[64]
       len (64 * stor4[arg1].field_1536) + (32 * stor4[arg1].field_1792) + ceil32(stor4[arg1].field_2817) + (32 * _2478) + ceil32(_2634) + -mem[64] + 1664
}



}
