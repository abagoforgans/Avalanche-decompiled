contract main {




// =====================  Runtime code  =====================


#
#  - sub_23119df3(?)
#  - sub_3a1b1d57(?)
#
const getChainID = chainid


mapping of uint8 stor0;
array of uint256 stor1;
array of struct stor2;
mapping of uint8 stor3;
mapping of struct stor4;
address payeeAddress;
address saleTokenAddress;
uint256 salePrice;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of struct stor13;
array of struct stor14;
mapping of struct stor15;
uint8 stor17;
uint8 stor17; offset 8
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of struct stor84800337471693920904250232874319843718400766719524250287777680170677855896575;
array of address stor84800337471693920904250232874319843718400766719524250287777680170677855896576;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896577;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896578;

function getSalePrice() {
    return salePrice
}

function getOpenState() {
    return bool(uint8(stor17.field_0))
}

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function getPayee() {
    return payeeAddress
}

function getSaleToken() {
    return saleTokenAddress
}

function salePrice() {
    return salePrice
}

function _fallback() payable {
    revert
}

function sub_4db404c8(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sha3(address(arg1), address(arg2), arg3, arg4)
}

function relinquishControl() {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function setOpenState(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    uint8(stor17.field_0) = uint8(arg1)
}

function setSalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if salePrice <= 0:
        revert with 0, 'salePrice must be greater than 0'
    salePrice = arg1
}

function setPayee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if not arg1:
        revert with 0, 'payee cannoot be zero address'
    payeeAddress = arg1
    emit PayeeChanged(arg1);
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(saleTokenAddress)
    call saleTokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6a1da7da(?) {
    if stor2.length:
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor2.length, data=mem[128 len 32 * stor2.length])
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    mem[(32 * stor2.length) + 192 len 32 * stor2.length] = mem[128 len 32 * stor2.length]
    return memory
      from (32 * stor2.length) + 128
       len (96 * stor2.length) + 64
}

function sub_67ad98da(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    return (stor15[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]].field_256 == sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function initialize() {
    if not uint8(stor1.length.field_8):
        if uint8(stor1.length):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.length.field_8):
            uint8(stor1.length) = 1
            uint8(stor1.length.field_8) = 1
            Mask(248, 0, stor1.length.field_8) = 0
    require ext_code.size(saleTokenAddress)
    staticcall saleTokenAddress.0xf3667517 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'soldToken must be controllable by this contract'
    mem[ceil32(return_data.size) + 128 len 160] = call.data[calldata.size len 160]
    mem[ceil32(return_data.size) + 128] = 4002
    if stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx].field_0
            mem[32] = 3
            stor3[stor2[idx].field_0] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < 5:
        if idx >= 5:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 3
        stor3[mem[(32 * idx) + ceil32(return_data.size) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor2.length = 5
    uint256(stor2.field_0) = 4002
    s = 1
    idx = ceil32(return_data.size) + 160
    while ceil32(return_data.size) + 288 > idx:
        stor2[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor2.length > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor17.field_8) = 1
    if not uint8(stor1.length.field_8):
        uint8(stor1.length.field_8) = 0
}

function sub_38d63a58(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length <= 0:
        revert with 0, 'invalid network list'
    if stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx].field_0
            mem[32] = 3
            stor3[stor2[idx].field_0] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        stor3[mem[(32 * idx) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if 32 * ('cd', 4).length <= 0:
            idx = 0
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor2.field_0) = mem[128]
            s = 1
            idx = 160
            while (32 * ('cd', 4).length) + 128 > idx:
                stor2[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * ('cd', 4).length) - 1) >> 5) + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_f25df665(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 256
        _22 = mem[64]
        if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 256
        mem[_22] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == address(cd[(cd[4] + cd[s] + 68)])
        mem[_22 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] == address(cd[(cd[4] + cd[s] + 100)])
        mem[_22 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[_22 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_22 + 128] = cd[(cd[4] + cd[s] + 164)]
        require cd[(cd[4] + cd[s] + 196)] == address(cd[(cd[4] + cd[s] + 196)])
        mem[_22 + 160] = cd[(cd[4] + cd[s] + 196)]
        mem[_22 + 192] = cd[(cd[4] + cd[s] + 228)]
        require cd[(cd[4] + cd[s] + 260)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] > test266151307():
            revert with 0, 65
        _41 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32
        mem[_41] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] + 68 <= calldata.size
        mem[_41 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]]
        mem[_41 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] + 32] = 0
        mem[_22 + 224] = _41
        mem[t] = _22
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128]]
        mem[32] = 4
        if 0 == stor4[mem[0]].field_0:
            revert with 0, 'invalid request id'
        if mem[mem[(32 * idx) + 128] + 96] != chainid:
            revert with 0, 'invalid chain id'
        mem[0] = mem[mem[(32 * idx) + 128]]
        mem[32] = 4
        if stor4[mem[0]].field_0:
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 4
            stor4[mem[0]].field_0 = 0
        emit 0x92c85f10: mem[mem[(32 * idx) + 128]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_20b965af(?) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_512):
        if bool(stor15[arg1].field_512) == uint255(stor15[arg1].field_513) < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_512):
            if bool(stor15[arg1].field_512) == uint255(stor15[arg1].field_513) < 32:
                revert with 0, 34
            if uint255(stor15[arg1].field_513):
                if 31 >= uint255(stor15[arg1].field_513):
                    mem[512] = 256 * Mask(248, 0, stor15[arg1].field_520)
                else:
                    mem[512] = stor15[arg1][2].field_0
                    idx = 512
                    s = 0
                    while uint255(stor15[arg1].field_513) + 480 > idx:
                        mem[idx + 32] = stor15[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor15[arg1].field_512) == stor15[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_513 % 128:
                if 31 >= stor15[arg1].field_513 % 128:
                    mem[512] = 256 * Mask(248, 0, stor15[arg1].field_520)
                else:
                    mem[512] = stor15[arg1][2].field_0
                    idx = 512
                    s = 0
                    while stor15[arg1].field_513 % 128 + 480 > idx:
                        mem[idx + 32] = stor15[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor15[arg1].field_0), 
               stor15[arg1].field_256,
               192,
               address(stor15[arg1].field_768),
               stor15[arg1].field_1024,
               stor15[arg1].field_1280,
               2 * Mask(256, -1, uint255(stor15[arg1].field_513)),
               mem[512 len ceil32(uint255(stor15[arg1].field_513))]
    if bool(stor15[arg1].field_512) == stor15[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_512):
        if bool(stor15[arg1].field_512) == uint255(stor15[arg1].field_513) < 32:
            revert with 0, 34
        if uint255(stor15[arg1].field_513):
            if 31 >= uint255(stor15[arg1].field_513):
                mem[512] = 256 * Mask(248, 0, stor15[arg1].field_520)
            else:
                mem[512] = stor15[arg1][2].field_0
                idx = 512
                s = 0
                while uint255(stor15[arg1].field_513) + 480 > idx:
                    mem[idx + 32] = stor15[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor15[arg1].field_512) == stor15[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_513 % 128:
            if 31 >= stor15[arg1].field_513 % 128:
                mem[512] = 256 * Mask(248, 0, stor15[arg1].field_520)
            else:
                mem[512] = stor15[arg1][2].field_0
                idx = 512
                s = 0
                while stor15[arg1].field_513 % 128 + 480 > idx:
                    mem[idx + 32] = stor15[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor15[arg1].field_0), 
           stor15[arg1].field_256,
           192,
           address(stor15[arg1].field_768),
           stor15[arg1].field_1024,
           stor15[arg1].field_1280,
           stor15[arg1].field_512 % 128,
           mem[512 len ceil32(stor15[arg1].field_513 % 128)]
}

function getRequest(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor4[arg1].field_0:
        revert with 0, 'invalid request'
    if bool(stor4[arg1].field_1792):
        if bool(stor4[arg1].field_1792) == uint255(stor4[arg1].field_1793) < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_1792):
            if bool(stor4[arg1].field_1792) == uint255(stor4[arg1].field_1793) < 32:
                revert with 0, 34
            if uint255(stor4[arg1].field_1793):
                if 31 >= uint255(stor4[arg1].field_1793):
                    mem[640] = 256 * Mask(248, 0, stor4[arg1].field_1800)
                else:
                    mem[640] = stor4[arg1][7].field_0
                    idx = 640
                    s = 0
                    while uint255(stor4[arg1].field_1793) + 608 > idx:
                        mem[idx + 32] = stor4[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1].field_1792) == stor4[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_1793 % 128:
                if 31 >= stor4[arg1].field_1793 % 128:
                    mem[640] = 256 * Mask(248, 0, stor4[arg1].field_1800)
                else:
                    mem[640] = stor4[arg1][7].field_0
                    idx = 640
                    s = 0
                    while stor4[arg1].field_1793 % 128 + 608 > idx:
                        mem[idx + 32] = stor4[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor4[arg1].field_0, 
               address(stor4[arg1].field_256),
               address(stor4[arg1].field_512),
               stor4[arg1].field_768,
               stor4[arg1].field_1024,
               address(stor4[arg1].field_1280),
               stor4[arg1].field_1536,
               256,
               2 * Mask(256, -1, uint255(stor4[arg1].field_1793)),
               mem[640 len ceil32(uint255(stor4[arg1].field_1793))]
    if bool(stor4[arg1].field_1792) == stor4[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_1792):
        if bool(stor4[arg1].field_1792) == uint255(stor4[arg1].field_1793) < 32:
            revert with 0, 34
        if uint255(stor4[arg1].field_1793):
            if 31 >= uint255(stor4[arg1].field_1793):
                mem[640] = 256 * Mask(248, 0, stor4[arg1].field_1800)
            else:
                mem[640] = stor4[arg1][7].field_0
                idx = 640
                s = 0
                while uint255(stor4[arg1].field_1793) + 608 > idx:
                    mem[idx + 32] = stor4[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1].field_1792) == stor4[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_1793 % 128:
            if 31 >= stor4[arg1].field_1793 % 128:
                mem[640] = 256 * Mask(248, 0, stor4[arg1].field_1800)
            else:
                mem[640] = stor4[arg1][7].field_0
                idx = 640
                s = 0
                while stor4[arg1].field_1793 % 128 + 608 > idx:
                    mem[idx + 32] = stor4[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor4[arg1].field_0, 
           address(stor4[arg1].field_256),
           address(stor4[arg1].field_512),
           stor4[arg1].field_768,
           stor4[arg1].field_1024,
           address(stor4[arg1].field_1280),
           stor4[arg1].field_1536,
           256,
           stor4[arg1].field_1792 % 128,
           mem[640 len ceil32(stor4[arg1].field_1793 % 128)]
}

function sub_11dae78a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 256
        _54 = mem[64]
        if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 256
        mem[_54] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == address(cd[(cd[4] + cd[s] + 68)])
        mem[_54 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] == address(cd[(cd[4] + cd[s] + 100)])
        mem[_54 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[_54 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_54 + 128] = cd[(cd[4] + cd[s] + 164)]
        require cd[(cd[4] + cd[s] + 196)] == address(cd[(cd[4] + cd[s] + 196)])
        mem[_54 + 160] = cd[(cd[4] + cd[s] + 196)]
        mem[_54 + 192] = cd[(cd[4] + cd[s] + 228)]
        require cd[(cd[4] + cd[s] + 260)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] > test266151307():
            revert with 0, 65
        _98 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]) + 32
        mem[_98] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] + 68 <= calldata.size
        mem[_98 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)]]
        mem[_98 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 260)] + 36)] + 32] = 0
        mem[_54 + 224] = _98
        mem[t] = _54
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _106 = mem[96]
    idx = 0
    while idx < _106:
        if idx >= mem[96]:
            revert with 0, 50
        _108 = mem[(32 * idx) + 128]
        mem[0] = mem[mem[(32 * idx) + 128]]
        mem[32] = 4
        if 0 == stor4[mem[0]].field_0:
            revert with 0, 'invalid request id'
        if mem[mem[(32 * idx) + 128] + 128] != chainid:
            revert with 0, 'invalid chain id'
        _114 = mem[mem[(32 * idx) + 128] + 64]
        _115 = mem[mem[(32 * idx) + 128] + 192]
        _116 = mem[mem[(32 * idx) + 128] + 224]
        mem[mem[64]] = 0x9d0daa7300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_114)
        mem[mem[64] + 36] = _115
        mem[mem[64] + 68] = 96
        _119 = mem[_116]
        mem[mem[64] + 100] = mem[_116]
        s = 0
        while s < _119:
            mem[s + mem[64] + 132] = mem[s + _116 + 32]
            _106 = mem[96]
            s = s + 32
            continue 
        if ceil32(_119) <= _119:
            require ext_code.size(this.address)
            call this.address.0x9d0daa73 with:
                 gas gas_remaining wei
                args address(_114), _115, 96, mem[mem[64] + 100 len ceil32(_119) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = mem[_108]
            mem[32] = 4
            stor4[mem[0]].field_0 = 0
            _161 = mem[_108]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_108]
            mem[mem[64] + 64] = mem[_108 + 44 len 20]
            mem[mem[64] + 96] = mem[_108 + 76 len 20]
            mem[mem[64] + 128] = mem[_108 + 96]
            mem[mem[64] + 160] = mem[_108 + 128]
            mem[mem[64] + 192] = mem[_108 + 172 len 20]
            mem[mem[64] + 224] = mem[_108 + 192]
            _180 = mem[_108 + 224]
            mem[mem[64] + 256] = 256
            _181 = mem[_180]
            mem[mem[64] + 288] = mem[_180]
            s = 0
            while s < _181:
                mem[s + mem[64] + 320] = mem[s + _180 + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_181) > _181:
                mem[mem[64] + _181 + 320] = 0
            emit 0x7d1deca1: 32, mem[mem[64] + 32 len 224], 256, mem[mem[64] + 288 len ceil32(_181) + 32], _161
        else:
            mem[mem[64] + _119 + 132] = 0
            require ext_code.size(this.address)
            call this.address.0x9d0daa73 with:
                 gas gas_remaining wei
                args address(_114), _115, 96, mem[mem[64] + 100 len ceil32(_119) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = mem[_108]
            mem[32] = 4
            stor4[mem[0]].field_0 = 0
            _171 = mem[_108]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_108]
            mem[mem[64] + 64] = mem[_108 + 44 len 20]
            mem[mem[64] + 96] = mem[_108 + 76 len 20]
            mem[mem[64] + 128] = mem[_108 + 96]
            mem[mem[64] + 160] = mem[_108 + 128]
            mem[mem[64] + 192] = mem[_108 + 172 len 20]
            mem[mem[64] + 224] = mem[_108 + 192]
            _183 = mem[_108 + 224]
            mem[mem[64] + 256] = 256
            _184 = mem[_183]
            mem[mem[64] + 288] = mem[_183]
            s = 0
            while s < _184:
                mem[s + mem[64] + 320] = mem[s + _183 + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_184) > _184:
                mem[mem[64] + _184 + 320] = 0
            emit 0x7d1deca1: 32, mem[mem[64] + 32 len 224], 256, mem[mem[64] + 288 len ceil32(_184) + 32], _171
        if idx == -1:
            revert with 0, 17
        _106 = mem[96]
        idx = idx + 1
        continue 
}

function minterList() {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    s = 128
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        _26 = mem[64]
        mem[64] = mem[64] + 192
        mem[_26] = address(stor14[idx].field_0)
        mem[_26 + 32] = stor14[idx].field_256
        if bool(stor14[idx].field_512):
            if bool(stor14[idx].field_512) == uint255(stor14[idx].field_513) < 32:
                revert with 0, 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor14[idx].field_513)) + 32
            mem[_30] = uint255(stor14[idx].field_513)
            if bool(stor14[idx].field_512):
                if bool(stor14[idx].field_512) == uint255(stor14[idx].field_513) < 32:
                    revert with 0, 34
                if uint255(stor14[idx].field_513):
                    if 31 >= uint255(stor14[idx].field_513):
                        mem[_30 + 32] = 256 * Mask(248, 0, stor14[idx].field_520)
                    else:
                        mem[0] = sha3(14) + (6 * idx) + 2
                        mem[_30 + 32] = stor[sha3(('name', 'stor14', 14) + (6 * idx) + 2)].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + uint255(stor14[idx].field_513) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor14[idx].field_768)
                mem[_26 + 128] = stor14[idx].field_1024
                mem[_26 + 160] = stor14[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor14[idx].field_512) == stor14[idx].field_513 % 128 < 32:
                revert with 0, 34
            if not stor14[idx].field_513 % 128:
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor14[idx].field_768)
                mem[_26 + 128] = stor14[idx].field_1024
                mem[_26 + 160] = stor14[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_513 % 128:
                mem[_30 + 32] = 256 * Mask(248, 0, stor14[idx].field_520)
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor14[idx].field_768)
                mem[_26 + 128] = stor14[idx].field_1024
                mem[_26 + 160] = stor14[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + (6 * idx) + 2
            mem[_30 + 32] = stor[sha3(('name', 'stor14', 14) + (6 * idx) + 2)].field_0
            t = _30 + 32
            u = sha3(mem[0])
            while _30 + stor14[u].field_513 % 128 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 64] = _30
            mem[_26 + 96] = address(stor14[u].field_768)
            mem[_26 + 128] = stor14[u].field_1024
            mem[_26 + 160] = stor14[u].field_1280
            mem[t] = _26
            t = t + 32
            u = u + 1
            continue 
        if bool(stor14[idx].field_512) == stor14[idx].field_513 % 128 < 32:
            revert with 0, 34
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(stor14[idx].field_513 % 128) + 32
        mem[_35] = stor14[idx].field_513 % 128
        if bool(stor14[idx].field_512):
            if bool(stor14[idx].field_512) == uint255(stor14[idx].field_513) < 32:
                revert with 0, 34
            if not uint255(stor14[idx].field_513):
                mem[_26 + 64] = _35
                mem[_26 + 96] = address(stor14[idx].field_768)
                mem[_26 + 128] = stor14[idx].field_1024
                mem[_26 + 160] = stor14[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor14[idx].field_513):
                mem[_35 + 32] = 256 * Mask(248, 0, stor14[idx].field_520)
                mem[_26 + 64] = _35
                mem[_26 + 96] = address(stor14[idx].field_768)
                mem[_26 + 128] = stor14[idx].field_1024
                mem[_26 + 160] = stor14[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(14) + (6 * idx) + 2
            mem[_35 + 32] = stor[sha3(('name', 'stor14', 14) + (6 * idx) + 2)].field_0
            t = _35 + 32
            u = sha3(mem[0])
            while _35 + uint255(stor14[u].field_513) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 64] = _35
            mem[_26 + 96] = address(stor14[u].field_768)
            mem[_26 + 128] = stor14[u].field_1024
            mem[_26 + 160] = stor14[u].field_1280
            mem[t] = _26
            t = t + 32
            u = u + 1
            continue 
        if bool(stor14[idx].field_512) == stor14[idx].field_513 % 128 < 32:
            revert with 0, 34
        if stor14[idx].field_513 % 128:
            if 31 >= stor14[idx].field_513 % 128:
                mem[_35 + 32] = 256 * Mask(248, 0, stor14[idx].field_520)
            else:
                mem[0] = sha3(14) + (6 * idx) + 2
                mem[_35 + 32] = stor[sha3(('name', 'stor14', 14) + (6 * idx) + 2)].field_0
                t = _35 + 32
                u = sha3(mem[0])
                while _35 + stor14[idx].field_513 % 128 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_26 + 64] = _35
        mem[_26 + 96] = address(stor14[idx].field_768)
        mem[_26 + 128] = stor14[idx].field_1024
        mem[_26 + 160] = stor14[idx].field_1280
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _28:
        mem[t] = u + -_27 - 64
        _48 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_48 + 32]
        _52 = mem[_48 + 64]
        mem[u + 64] = 192
        _53 = mem[_52]
        mem[u + 192] = mem[_52]
        v = 0
        while v < _53:
            mem[v + u + 224] = mem[v + _52 + 32]
            v = v + 32
            continue 
        if ceil32(_53) > _53:
            mem[u + _53 + 224] = 0
        mem[u + 96] = mem[_48 + 108 len 20]
        mem[u + 128] = mem[_48 + 128]
        mem[u + 160] = mem[_48 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_53) + u + 224
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function purchaserList() {
    mem[64] = (32 * stor13.length) + 128
    mem[96] = stor13.length
    s = 128
    idx = 0
    while idx < stor13.length:
        mem[0] = 13
        _26 = mem[64]
        mem[64] = mem[64] + 192
        mem[_26] = address(stor13[idx].field_0)
        mem[_26 + 32] = stor13[idx].field_256
        if bool(stor13[idx].field_512):
            if bool(stor13[idx].field_512) == uint255(stor13[idx].field_513) < 32:
                revert with 0, 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor13[idx].field_513)) + 32
            mem[_30] = uint255(stor13[idx].field_513)
            if bool(stor13[idx].field_512):
                if bool(stor13[idx].field_512) == uint255(stor13[idx].field_513) < 32:
                    revert with 0, 34
                if uint255(stor13[idx].field_513):
                    if 31 >= uint255(stor13[idx].field_513):
                        mem[_30 + 32] = 256 * Mask(248, 0, stor13[idx].field_520)
                    else:
                        mem[0] = sha3(13) + (6 * idx) + 2
                        mem[_30 + 32] = stor[sha3(('name', 'stor13', 13) + (6 * idx) + 2)].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + uint255(stor13[idx].field_513) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor13[idx].field_768)
                mem[_26 + 128] = stor13[idx].field_1024
                mem[_26 + 160] = stor13[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor13[idx].field_512) == stor13[idx].field_513 % 128 < 32:
                revert with 0, 34
            if not stor13[idx].field_513 % 128:
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor13[idx].field_768)
                mem[_26 + 128] = stor13[idx].field_1024
                mem[_26 + 160] = stor13[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor13[idx].field_513 % 128:
                mem[_30 + 32] = 256 * Mask(248, 0, stor13[idx].field_520)
                mem[_26 + 64] = _30
                mem[_26 + 96] = address(stor13[idx].field_768)
                mem[_26 + 128] = stor13[idx].field_1024
                mem[_26 + 160] = stor13[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(13) + (6 * idx) + 2
            mem[_30 + 32] = stor[sha3(('name', 'stor13', 13) + (6 * idx) + 2)].field_0
            t = _30 + 32
            u = sha3(mem[0])
            while _30 + stor13[u].field_513 % 128 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 64] = _30
            mem[_26 + 96] = address(stor13[u].field_768)
            mem[_26 + 128] = stor13[u].field_1024
            mem[_26 + 160] = stor13[u].field_1280
            mem[t] = _26
            t = t + 32
            u = u + 1
            continue 
        if bool(stor13[idx].field_512) == stor13[idx].field_513 % 128 < 32:
            revert with 0, 34
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(stor13[idx].field_513 % 128) + 32
        mem[_35] = stor13[idx].field_513 % 128
        if bool(stor13[idx].field_512):
            if bool(stor13[idx].field_512) == uint255(stor13[idx].field_513) < 32:
                revert with 0, 34
            if not uint255(stor13[idx].field_513):
                mem[_26 + 64] = _35
                mem[_26 + 96] = address(stor13[idx].field_768)
                mem[_26 + 128] = stor13[idx].field_1024
                mem[_26 + 160] = stor13[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor13[idx].field_513):
                mem[_35 + 32] = 256 * Mask(248, 0, stor13[idx].field_520)
                mem[_26 + 64] = _35
                mem[_26 + 96] = address(stor13[idx].field_768)
                mem[_26 + 128] = stor13[idx].field_1024
                mem[_26 + 160] = stor13[idx].field_1280
                mem[s] = _26
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(13) + (6 * idx) + 2
            mem[_35 + 32] = stor[sha3(('name', 'stor13', 13) + (6 * idx) + 2)].field_0
            t = _35 + 32
            u = sha3(mem[0])
            while _35 + uint255(stor13[u].field_513) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 64] = _35
            mem[_26 + 96] = address(stor13[u].field_768)
            mem[_26 + 128] = stor13[u].field_1024
            mem[_26 + 160] = stor13[u].field_1280
            mem[t] = _26
            t = t + 32
            u = u + 1
            continue 
        if bool(stor13[idx].field_512) == stor13[idx].field_513 % 128 < 32:
            revert with 0, 34
        if stor13[idx].field_513 % 128:
            if 31 >= stor13[idx].field_513 % 128:
                mem[_35 + 32] = 256 * Mask(248, 0, stor13[idx].field_520)
            else:
                mem[0] = sha3(13) + (6 * idx) + 2
                mem[_35 + 32] = stor[sha3(('name', 'stor13', 13) + (6 * idx) + 2)].field_0
                t = _35 + 32
                u = sha3(mem[0])
                while _35 + stor13[idx].field_513 % 128 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_26 + 64] = _35
        mem[_26 + 96] = address(stor13[idx].field_768)
        mem[_26 + 128] = stor13[idx].field_1024
        mem[_26 + 160] = stor13[idx].field_1280
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _28:
        mem[t] = u + -_27 - 64
        _48 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_48 + 32]
        _52 = mem[_48 + 64]
        mem[u + 64] = 192
        _53 = mem[_52]
        mem[u + 192] = mem[_52]
        v = 0
        while v < _53:
            mem[v + u + 224] = mem[v + _52 + 32]
            v = v + 32
            continue 
        if ceil32(_53) > _53:
            mem[u + _53 + 224] = 0
        mem[u + 96] = mem[_48 + 108 len 20]
        mem[u + 128] = mem[_48 + 128]
        mem[u + 160] = mem[_48 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_53) + u + 224
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_2185599f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 < 288 or ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 320] = 0
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]], mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 320 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) - cd[(cd[4] + ('cd', 4)[1] + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) > cd[(cd[4] + ('cd', 4)[1] + 4)]:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 352] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    if sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]) != ('cd', 4)[0]:
        revert with 0, 'invalid tokenhash'
    address(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_0) = address(('cd', 4).length)
    stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_256 = ('cd', 4)[0]
    if bool(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_512):
        if bool(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_512) == uint255(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_513) < 32:
            revert with 0, 34
        if cd[(cd[4] + ('cd', 4)[1] + 4)]:
            stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]][2][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[1] + 4)], data=call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]])
        else:
            stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_512 = 0
            idx = 0
            while uint255(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_513) + 31 / 32 > idx:
                stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_512) == stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_513 % 128 < 32:
            revert with 0, 34
        if cd[(cd[4] + ('cd', 4)[1] + 4)]:
            stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]][2][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[1] + 4)], data=call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]])
        else:
            stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_512 = 0
            idx = 0
            while stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_513 % 128 + 31 / 32 > idx:
                stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    address(stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_768) = address(('cd', 4)[2])
    stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_1024 = ('cd', 4)[3]
    stor15[mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]]].field_1280 = ('cd', 4)[4]
    if ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) > cd[(cd[4] + ('cd', 4)[1] + 4)]:
        mem[(2 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 608] = 0
    emit 0x62c797e0: 32, address(('cd', 4).length), ('cd', 4)[0], 192, address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], cd[(cd[4] + ('cd', 4)[1] + 4)], call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]], mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 320 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) - cd[(cd[4] + ('cd', 4)[1] + 4)]], address(('cd', 4).length)
}

function mint(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
    if bool(uint8(stor17.field_8)) != 1:
        revert with 0, 'This tokensale is not yet intialized'
    if stor12 >= stor11:
        revert with 0, 'cannot mint more than the reserve'
    if 1 > !stor9:
        revert with 0, 17
    if stor9 + 1 > stor10:
        revert with 0, 'cannot mint more than maxCount'
    mem[ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 160] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length
    if stor15[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]].field_256 == sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]):
        revert with 0, 'This seed has already been minted'
    create2 contract with 0 wei
                    salt: sha3('forwarder', this.address, arg1)
                    code: code.data[14316 len 1383]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2) with:
         gas gas_remaining wei
        args payeeAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor9 == -1:
        revert with 0, 17
    stor9++
    stor14.length++
    address(stor14[stor14.length].field_0) = uint64(arg1) << 96
    storBB7B[stor14.length] = sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)
    if bool(storBB7B[stor14.length].field_0):
        if bool(storBB7B[stor14.length].field_0) == uint255(storBB7B[stor14.length].field_1) < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((6 * stor14.length) - 0x4484b5bab23cb6c6dcb7d0f87ddcd612e617dbb100a7d33dfb07aab3c9df3c01)][] = Array(len=arg2.length, data=arg2[all])
        else:
            storBB7B[stor14.length].field_0 = 0
            idx = 0
            while uint255(storBB7B[stor14.length].field_1) + 31 / 32 > idx:
                stor[idx + sha3((6 * stor14.length) - 0x4484b5bab23cb6c6dcb7d0f87ddcd612e617dbb100a7d33dfb07aab3c9df3c01)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(storBB7B[stor14.length].field_0) == storBB7B[stor14.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((6 * stor14.length) - 0x4484b5bab23cb6c6dcb7d0f87ddcd612e617dbb100a7d33dfb07aab3c9df3c01)][] = Array(len=arg2.length, data=arg2[all])
        else:
            storBB7B[stor14.length].field_0 = 0
            idx = 0
            while storBB7B[stor14.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((6 * stor14.length) - 0x4484b5bab23cb6c6dcb7d0f87ddcd612e617dbb100a7d33dfb07aab3c9df3c01)] = 0
                idx = idx + 1
                continue 
    storBB7B[stor14.length] = address(create2.new_address)
    storBB7B[stor14.length] = stor9 + 1
    storBB7B[stor14.length] = chainid
    address(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_0) = uint64(arg1) << 96
    stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_256 = sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)
    if bool(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_512):
        if bool(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_512) == uint255(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_513) < 32:
            revert with 0, 34
        if arg2.length:
            stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_512 = 0
            idx = 0
            while uint255(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_513) + 31 / 32 > idx:
                stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_512) == stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_513 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_512 = 0
            idx = 0
            while stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_513 % 128 + 31 / 32 > idx:
                stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    address(stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_768) = address(create2.new_address)
    stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_1024 = stor9 + 1
    stor15[Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256].field_1280 = chainid
    if 1 > !stor12:
        revert with 0, 17
    stor12++
    require ext_code.size(saleTokenAddress)
    call saleTokenAddress.mint(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), address(create2.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x62c797e0: 32, arg1 << 192, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), 192, create2.new_address << 192, stor9 + 1, chainid, arg2.length, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length], arg1
}

function sub_9d0daa73(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if 1 == bool(stor0[msg.sender]):
        mem[ceil32(arg3.length) + 128] = address(stor15[arg2].field_0)
        mem[ceil32(arg3.length) + 160] = stor15[arg2].field_256
        if bool(stor15[arg2].field_512):
            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                revert with 0, 34
            if bool(stor15[arg2].field_512):
                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor15[arg2].field_513):
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= uint255(stor15[arg2].field_513):
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + uint255(stor15[arg2].field_513) + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32653 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32653
            else:
                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor15[arg2].field_513 % 128:
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= stor15[arg2].field_513 % 128:
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + stor15[arg2].field_513 % 128 + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32654 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32654
        else:
            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                revert with 0, 34
            if bool(stor15[arg2].field_512):
                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor15[arg2].field_513):
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= uint255(stor15[arg2].field_513):
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + uint255(stor15[arg2].field_513) + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32655 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32655
            else:
                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor15[arg2].field_513 % 128:
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= stor15[arg2].field_513 % 128:
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + stor15[arg2].field_513 % 128 + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32656 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32656
    else:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
        mem[ceil32(arg3.length) + 128] = address(stor15[arg2].field_0)
        mem[ceil32(arg3.length) + 160] = stor15[arg2].field_256
        if bool(stor15[arg2].field_512):
            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                revert with 0, 34
            if bool(stor15[arg2].field_512):
                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor15[arg2].field_513):
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= uint255(stor15[arg2].field_513):
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + uint255(stor15[arg2].field_513) + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32657 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32657
            else:
                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor15[arg2].field_513 % 128:
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if uint255(stor15[arg2].field_513):
                                    stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= stor15[arg2].field_513 % 128:
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + stor15[arg2].field_513 % 128 + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32658 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if uint255(stor15[arg2].field_513):
                                        stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if uint255(stor15[arg2].field_513):
                                            stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if uint255(stor15[arg2].field_513):
                                                stor15[arg2][2][].field_0 = Array(len=uint255(stor15[arg2].field_513), data=mem[ceil32(arg3.length) + 352 len uint255(stor15[arg2].field_513)])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32658
        else:
            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                revert with 0, 34
            if bool(stor15[arg2].field_512):
                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor15[arg2].field_513):
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= uint255(stor15[arg2].field_513):
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + uint255(stor15[arg2].field_513) + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32659 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32659
            else:
                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor15[arg2].field_513 % 128:
                    require arg3.length >= 64
                    require mem[128] == mem[140 len 20]
                    if not arg3.length:
                        if address(stor15[arg2].field_768):
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                        else:
                            create2 contract with 0 wei
                                            salt: sha3('forwarder', this.address, address(arg1))
                                            code: code.data[14316 len 1383]
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).initialize(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args payeeAddress, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            address(stor15[arg2].field_0) = address(arg1)
                            stor15[arg2].field_256 = arg2
                            if bool(stor15[arg2].field_512):
                                if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor15[arg2].field_513 % 128:
                                    stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                else:
                                    stor15[arg2].field_512 = 0
                                    idx = 0
                                    while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                        stor15[arg2][idx + 2].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            address(stor15[arg2].field_768) = address(create2.new_address)
                    else:
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not address(stor15[arg2].field_0):
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, mem[140 len 20])
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, mem[140 len 20]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = mem[140 len 20]
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                        if stor15[arg2].field_1024:
                        else:
                            stor15[arg2].field_1024 = mem[160]
                else:
                    if 31 >= stor15[arg2].field_513 % 128:
                        mem[ceil32(arg3.length) + 352] = 256 * Mask(248, 0, stor15[arg2].field_520)
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not address(stor15[arg2].field_0):
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = mem[160]
                    else:
                        mem[ceil32(arg3.length) + 352] = stor15[arg2][2].field_0
                        idx = ceil32(arg3.length) + 352
                        s = 0
                        while ceil32(arg3.length) + stor15[arg2].field_513 % 128 + 320 > idx:
                            mem[idx + 32] = stor15[arg2][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require arg3.length >= 64
                        require mem[128] == mem[140 len 20]
                        _32660 = mem[160]
                        mem[ceil32(arg3.length) + 160] = arg2
                        if not arg3.length:
                            if address(stor15[arg2].field_768):
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                            else:
                                create2 contract with 0 wei
                                                salt: sha3('forwarder', this.address, address(arg1))
                                                code: code.data[14316 len 1383]
                                require ext_code.size(address(create2.new_address))
                                call address(create2.new_address).initialize(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args payeeAddress, address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                address(stor15[arg2].field_0) = address(arg1)
                                stor15[arg2].field_256 = arg2
                                if bool(stor15[arg2].field_512):
                                    if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                        revert with 0, 34
                                    if stor15[arg2].field_513 % 128:
                                        stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                    else:
                                        stor15[arg2].field_512 = 0
                                        idx = 0
                                        while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                            stor15[arg2][idx + 2].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                address(stor15[arg2].field_768) = address(create2.new_address)
                        else:
                            if not arg3.length:
                                if address(stor15[arg2].field_768):
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                else:
                                    create2 contract with 0 wei
                                                    salt: sha3('forwarder', this.address, address(arg1))
                                                    code: code.data[14316 len 1383]
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).initialize(address rg1, address rg2) with:
                                         gas gas_remaining wei
                                        args payeeAddress, address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    address(stor15[arg2].field_0) = address(arg1)
                                    stor15[arg2].field_256 = arg2
                                    if bool(stor15[arg2].field_512):
                                        if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                            revert with 0, 34
                                        if stor15[arg2].field_513 % 128:
                                            stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                        else:
                                            stor15[arg2].field_512 = 0
                                            idx = 0
                                            while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                stor15[arg2][idx + 2].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    address(stor15[arg2].field_768) = address(create2.new_address)
                            else:
                                if not Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, mem[140 len 20])
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, mem[140 len 20]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = mem[140 len 20]
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                                else:
                                    if address(stor15[arg2].field_768):
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(stor15[arg2].field_768)
                                    else:
                                        create2 contract with 0 wei
                                                        salt: sha3('forwarder', this.address, address(arg1))
                                                        code: code.data[14316 len 1383]
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).initialize(address rg1, address rg2) with:
                                             gas gas_remaining wei
                                            args payeeAddress, address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        address(stor15[arg2].field_0) = address(arg1)
                                        stor15[arg2].field_256 = arg2
                                        if bool(stor15[arg2].field_512):
                                            if bool(stor15[arg2].field_512) == uint255(stor15[arg2].field_513) < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while uint255(stor15[arg2].field_513) + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor15[arg2].field_512) == stor15[arg2].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if stor15[arg2].field_513 % 128:
                                                stor15[arg2][2][].field_0 = Array(len=stor15[arg2].field_513 % 128, data=mem[ceil32(arg3.length) + 352 len stor15[arg2].field_513 % 128])
                                            else:
                                                stor15[arg2].field_512 = 0
                                                idx = 0
                                                while stor15[arg2].field_513 % 128 + 31 / 32 > idx:
                                                    stor15[arg2][idx + 2].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        address(stor15[arg2].field_768) = address(create2.new_address)
                            if stor15[arg2].field_1024:
                            else:
                                stor15[arg2].field_1024 = _32660
    stor15[arg2].field_1280 = chainid
    require ext_code.size(saleTokenAddress)
    call saleTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
