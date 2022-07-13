contract main {




// =====================  Runtime code  =====================


const sub_f1a640f8(?) = 8


address owner;
address routerAddress;
address keeperAddress;
address treasuryAddress;
address tradingAddress;
uint256 sub_44787b3e;
uint256 sub_a9b3f177;
uint256 sub_0e99abc0;
uint256 sub_6fc80708;
uint8 stor9;
mapping of uint256 sub_ed9ee78b;
mapping of uint256 sub_709ebebd;
mapping of uint8 stor12;
mapping of address sub_c6c3f71e;
mapping of uint64 sub_e3505daf;
mapping of struct sub_3616ff4c;
mapping of uint8 stor16;

function sub_0e99abc0(?) payable {
    return sub_0e99abc0
}

function sub_10a2f3aa(?) payable {
    require calldata.size - 4 >= 64
    return sub_3616ff4c[arg1][arg2].field_0, 
           sub_3616ff4c[arg1][arg2].field_256,
           sub_3616ff4c[arg1][arg2].field_512,
           bool(sub_3616ff4c[arg1][arg2].field_672),
           sub_3616ff4c[arg1][arg2].field_768
}

function inPrivateLiquidationMode() payable {
    return bool(stor9)
}

function sub_3616ff4c(?) payable {
    require calldata.size - 4 >= 64
    if not sub_3616ff4c[arg1][arg2].field_768:
        revert with 0, '!exists'
    return sub_3616ff4c[arg1][arg2].field_0, 
           sub_3616ff4c[arg1][arg2].field_256,
           sub_3616ff4c[arg1][arg2].field_512,
           bool(sub_3616ff4c[arg1][arg2].field_672),
           sub_3616ff4c[arg1][arg2].field_768
}

function sub_44787b3e(?) payable {
    return sub_44787b3e
}

function isLiquidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function treasury() payable {
    return treasuryAddress
}

function sub_6fc80708(?) payable {
    return sub_6fc80708
}

function sub_709ebebd(?) payable {
    require calldata.size - 4 >= 32
    return sub_709ebebd[arg1]
}

function owner() payable {
    return owner
}

function sub_a9b3f177(?) payable {
    return sub_a9b3f177
}

function keeper() payable {
    return keeperAddress
}

function sub_c6c3f71e(?) payable {
    require calldata.size - 4 >= 32
    return sub_c6c3f71e[arg1]
}

function sub_e3505daf(?) payable {
    require calldata.size - 4 >= 32
    return sub_e3505daf[arg1]
}

function trading() payable {
    return tradingAddress
}

function sub_ed9ee78b(?) payable {
    require calldata.size - 4 >= 32
    return sub_ed9ee78b[arg1]
}

function sub_f03c81b3(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function setParams(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_44787b3e = arg1
    sub_a9b3f177 = arg2
}

function setPriceSampleSpace(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if arg1 <= 0:
        revert with 0, '!sample-space-valid'
    sub_6fc80708 = arg1
}

function sub_4453a374(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!owner'
    stor16[address(arg1)] = uint8(bool(arg2))
}

function sub_b34b7c7f(?) payable {
    require calldata.size - 4 >= 64
    if tradingAddress != msg.sender:
        revert with 0, '!trading'
    sub_3616ff4c[arg1][arg2].field_0 = 0
    sub_3616ff4c[arg1][arg2].field_256 = 0
    sub_3616ff4c[arg1][arg2].field_512 = 0
    sub_3616ff4c[arg1][arg2].field_768 = 0
}

function sub_13d26487(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == uint64(arg3)
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_c6c3f71e[arg1] = address(arg2)
    sub_e3505daf[arg1] = uint64(arg3)
    stor12[arg1] = uint8(bool(arg4))
}

function sub_dd8fcf95(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if tradingAddress != msg.sender:
        revert with 0, '!trading'
    sub_3616ff4c[arg2][stor10[arg2]].field_0 = address(arg1)
    sub_3616ff4c[arg2][stor10[arg2]].field_256 = arg2
    sub_3616ff4c[arg2][stor10[arg2]].field_512 = address(arg3)
    sub_3616ff4c[arg2][stor10[arg2]].field_672 = Mask(96, 0, bool(arg4))
    sub_3616ff4c[arg2][stor10[arg2]].field_768 = block.timestamp
    if sub_ed9ee78b[arg2] == -1:
        revert with 0, 17
    sub_ed9ee78b[arg2]++
    return sub_ed9ee78b[arg2]
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xec44acf2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tradingAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    treasuryAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xaced1661 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    keeperAddress = ext_call.return_data[12 len 20]
}

function sub_054c8a7b(?) payable {
    require calldata.size - 4 >= 32
    if not sub_c6c3f71e[arg1]:
        revert with 0, '!valid-feed'
    if not stor12[arg1]:
        revert with 0, '!product-allowed'
    mem[0] = arg1
    mem[32] = 14
    require ext_code.size(sub_c6c3f71e[arg1])
    staticcall sub_c6c3f71e[arg1].latestRound() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    idx = 0
    s = 0
    t = 0
    u = 0
    while Mask(80, 0, idx) < sub_6fc80708:
        if Mask(80, 0, ext_call.return_data[0]) <= Mask(80, 0, idx):
            return u, t, s
        if Mask(80, 0, idx):
            if Mask(80, 0, ext_call.return_data[0]) < Mask(80, 0, idx):
                revert with 0, 17
            require ext_code.size(sub_c6c3f71e[arg1])
            staticcall sub_c6c3f71e[arg1].getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args (Mask(80, 0, ext_call.return_data[0]) - Mask(80, 0, idx) << 176)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_37] == mem[_37 + 22 len 10]
            require mem[_37 + 128] == mem[_37 + 150 len 10]
            if mem[_37 + 32] <= 0:
                revert with 0, '!price-valid'
            if not sub_e3505daf[arg1]:
                if mem[_37 + 32] and 100 * 10^6 > -1 / mem[_37 + 32]:
                    revert with 0, 17
                if Mask(80, 0, idx) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, idx):
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = 100 * 10^6 * mem[_37 + 32]
                    u = 100 * 10^6 * mem[_37 + 32]
                    continue 
                if 100 * 10^6 * mem[_37 + 32] > u:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = 100 * 10^6 * mem[_37 + 32]
                    continue 
                if 100 * 10^6 * mem[_37 + 32] >= t:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_37 + 32]
                u = u
                continue 
            if bool(bool(sub_e3505daf[arg1] < 78)) or bool(bool(sub_e3505daf[arg1] < 32)):
                if mem[_37 + 32] and 100 * 10^6 > -1 / mem[_37 + 32]:
                    revert with 0, 17
                if not 10^sub_e3505daf[arg1]:
                    revert with 0, 18
                if Mask(80, 0, idx) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, idx):
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1]
                    u = 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1]
                    continue 
                if 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1] > u:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1]
                    continue 
                if 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1] >= t:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_37 + 32] / 10^sub_e3505daf[arg1]
                u = u
                continue 
            w = 10
            x = 1
            v = sub_e3505daf[arg1]
            while v > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(v):
                    w = w * w
                    x = x
                    v = uint255(v) * 0.5
                    continue 
                w = w * w
                x = w * x
                v = uint255(v) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if mem[_37 + 32] and 100 * 10^6 > -1 / mem[_37 + 32]:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_37 + 32] / w * x
                u = 100 * 10^6 * mem[_37 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_37 + 32] / w * x > u:
                idx = Mask(80, 0, idx) + 1
                s = s
                t = t
                u = 100 * 10^6 * mem[_37 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_37 + 32] / w * x >= t:
                idx = Mask(80, 0, idx) + 1
                s = s
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = s
            t = 100 * 10^6 * mem[_37 + 32] / w * x
            u = u
            continue 
        require ext_code.size(sub_c6c3f71e[arg1])
        staticcall sub_c6c3f71e[arg1].latestRoundData() with:
                gas gas_remaining wei
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_33] == mem[_33 + 22 len 10]
        require mem[_33 + 128] == mem[_33 + 150 len 10]
        if not mem[_33 + 96]:
            revert with 0, '!timestamp-valid'
        if mem[_33 + 32] <= 0:
            revert with 0, '!price-valid'
        if not sub_e3505daf[arg1]:
            if mem[_33 + 32] and 100 * 10^6 > -1 / mem[_33 + 32]:
                revert with 0, 17
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = 100 * 10^6 * mem[_33 + 32]
                u = 100 * 10^6 * mem[_33 + 32]
                continue 
            if 100 * 10^6 * mem[_33 + 32] > u:
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = t
                u = 100 * 10^6 * mem[_33 + 32]
                continue 
            if 100 * 10^6 * mem[_33 + 32] >= t:
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = mem[_33 + 96]
            t = 100 * 10^6 * mem[_33 + 32]
            u = u
            continue 
        if bool(bool(sub_e3505daf[arg1] < 78)) or bool(bool(sub_e3505daf[arg1] < 32)):
            if mem[_33 + 32] and 100 * 10^6 > -1 / mem[_33 + 32]:
                revert with 0, 17
            if not 10^sub_e3505daf[arg1]:
                revert with 0, 18
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1]
                u = 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1]
                continue 
            if 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1] > u:
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = t
                u = 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1]
                continue 
            if 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1] >= t:
                idx = Mask(80, 0, idx) + 1
                s = mem[_33 + 96]
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = mem[_33 + 96]
            t = 100 * 10^6 * mem[_33 + 32] / 10^sub_e3505daf[arg1]
            u = u
            continue 
        v = 10
        w = 1
        s = sub_e3505daf[arg1]
        while s > 1:
            if v > -1 / v:
                revert with 0, 17
            if not bool(s):
                v = v * v
                w = w
                s = uint255(s) * 0.5
                continue 
            v = v * v
            w = v * w
            s = uint255(s) * 0.5
            continue 
        if w > -1 / v:
            revert with 0, 17
        if mem[_33 + 32] and 100 * 10^6 > -1 / mem[_33 + 32]:
            revert with 0, 17
        if not v * w:
            revert with 0, 18
        if Mask(80, 0, idx) == test266151307():
            revert with 0, 17
        if not Mask(80, 0, idx):
            idx = Mask(80, 0, idx) + 1
            s = mem[_33 + 96]
            t = 100 * 10^6 * mem[_33 + 32] / v * w
            u = 100 * 10^6 * mem[_33 + 32] / v * w
            continue 
        if 100 * 10^6 * mem[_33 + 32] / v * w > u:
            idx = Mask(80, 0, idx) + 1
            s = mem[_33 + 96]
            t = t
            u = 100 * 10^6 * mem[_33 + 32] / v * w
            continue 
        if 100 * 10^6 * mem[_33 + 32] / v * w >= t:
            idx = Mask(80, 0, idx) + 1
            s = mem[_33 + 96]
            t = t
            u = u
            continue 
        idx = Mask(80, 0, idx) + 1
        s = mem[_33 + 96]
        t = 100 * 10^6 * mem[_33 + 32] / v * w
        u = u
        continue 
    return u, t, s
}

function sub_5f3b41d3(?) payable {
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
    if not stor12[cd[100]]:
        revert with 0, '!product-allowed'
    if not sub_c6c3f71e[cd[100]]:
        revert with 0, '!valid-feed'
    if not stor12[cd[100]]:
        revert with 0, '!product-allowed'
    mem[0] = cd[100]
    mem[32] = 14
    require ext_code.size(sub_c6c3f71e[cd[100]])
    staticcall sub_c6c3f71e[cd[100]].latestRound() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    idx = 0
    s = 0
    t = 0
    u = 0
    while Mask(80, 0, idx) < sub_6fc80708:
        if Mask(80, 0, ext_call.return_data[0]) <= Mask(80, 0, idx):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = 0x2146573900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = cd[100]
                mem[mem[64] + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 100] = bool(cd[((32 * idx) + cd[68] + 36)])
                if cd[((32 * idx) + cd[68] + 36)]:
                    mem[mem[64] + 132] = t
                    require ext_code.size(tradingAddress)
                    call tradingAddress.0x21465739 with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), cd[100], address(cd[((32 * idx) + cd[4] + 36)]), bool(cd[((32 * idx) + cd[68] + 36)]), t
                else:
                    mem[mem[64] + 132] = u
                    require ext_code.size(tradingAddress)
                    call tradingAddress.0x21465739 with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), cd[100], address(cd[((32 * idx) + cd[4] + 36)]), bool(cd[((32 * idx) + cd[68] + 36)]), u
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor9:
                if not stor16[msg.sender]:
                    revert with 0, '!liquidator'
                if ('cd', 36).length:
                    if sub_0e99abc0 > !('cd', 36).length:
                        revert with 0, 17
                    sub_0e99abc0 += ('cd', 36).length
                    if sub_0e99abc0 >= sub_44787b3e:
                        sub_0e99abc0 = 0
                        if sub_a9b3f177 and sub_44787b3e > -1 / sub_a9b3f177:
                            revert with 0, 17
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.0x3b7e1df9 with:
                             gas gas_remaining wei
                            args keeperAddress, sub_a9b3f177 * sub_44787b3e
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if Mask(80, 0, idx):
            if Mask(80, 0, ext_call.return_data[0]) < Mask(80, 0, idx):
                revert with 0, 17
            require ext_code.size(sub_c6c3f71e[cd[100]])
            staticcall sub_c6c3f71e[cd[100]].getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args (Mask(80, 0, ext_call.return_data[0]) - Mask(80, 0, idx) << 176)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_54] == mem[_54 + 22 len 10]
            require mem[_54 + 128] == mem[_54 + 150 len 10]
            if mem[_54 + 32] <= 0:
                revert with 0, '!price-valid'
            if not sub_e3505daf[cd[100]]:
                if mem[_54 + 32] and 100 * 10^6 > -1 / mem[_54 + 32]:
                    revert with 0, 17
                if Mask(80, 0, idx) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, idx):
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = 100 * 10^6 * mem[_54 + 32]
                    u = 100 * 10^6 * mem[_54 + 32]
                    continue 
                if 100 * 10^6 * mem[_54 + 32] > u:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = 100 * 10^6 * mem[_54 + 32]
                    continue 
                if 100 * 10^6 * mem[_54 + 32] >= t:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_54 + 32]
                u = u
                continue 
            if bool(bool(sub_e3505daf[cd[100]] < 78)) or bool(bool(sub_e3505daf[cd[100]] < 32)):
                if mem[_54 + 32] and 100 * 10^6 > -1 / mem[_54 + 32]:
                    revert with 0, 17
                if not 10^sub_e3505daf[cd[100]]:
                    revert with 0, 18
                if Mask(80, 0, idx) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, idx):
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]]
                    u = 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]]
                    continue 
                if 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]] > u:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]]
                    continue 
                if 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]] >= t:
                    idx = Mask(80, 0, idx) + 1
                    s = s
                    t = t
                    u = u
                    continue 
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_54 + 32] / 10^sub_e3505daf[cd[100]]
                u = u
                continue 
            w = 10
            x = 1
            v = sub_e3505daf[cd[100]]
            while v > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(v):
                    w = w * w
                    x = x
                    v = uint255(v) * 0.5
                    continue 
                w = w * w
                x = w * x
                v = uint255(v) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if mem[_54 + 32] and 100 * 10^6 > -1 / mem[_54 + 32]:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = s
                t = 100 * 10^6 * mem[_54 + 32] / w * x
                u = 100 * 10^6 * mem[_54 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_54 + 32] / w * x > u:
                idx = Mask(80, 0, idx) + 1
                s = s
                t = t
                u = 100 * 10^6 * mem[_54 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_54 + 32] / w * x >= t:
                idx = Mask(80, 0, idx) + 1
                s = s
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = s
            t = 100 * 10^6 * mem[_54 + 32] / w * x
            u = u
            continue 
        require ext_code.size(sub_c6c3f71e[cd[100]])
        staticcall sub_c6c3f71e[cd[100]].latestRoundData() with:
                gas gas_remaining wei
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_48] == mem[_48 + 22 len 10]
        require mem[_48 + 128] == mem[_48 + 150 len 10]
        if not mem[_48 + 96]:
            revert with 0, '!timestamp-valid'
        if mem[_48 + 32] <= 0:
            revert with 0, '!price-valid'
        if not sub_e3505daf[cd[100]]:
            if mem[_48 + 32] and 100 * 10^6 > -1 / mem[_48 + 32]:
                revert with 0, 17
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = 100 * 10^6 * mem[_48 + 32]
                u = 100 * 10^6 * mem[_48 + 32]
                continue 
            if 100 * 10^6 * mem[_48 + 32] > u:
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = t
                u = 100 * 10^6 * mem[_48 + 32]
                continue 
            if 100 * 10^6 * mem[_48 + 32] >= t:
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = mem[_48 + 96]
            t = 100 * 10^6 * mem[_48 + 32]
            u = u
            continue 
        if bool(bool(sub_e3505daf[cd[100]] < 78)) or bool(bool(sub_e3505daf[cd[100]] < 32)):
            if mem[_48 + 32] and 100 * 10^6 > -1 / mem[_48 + 32]:
                revert with 0, 17
            if not 10^sub_e3505daf[cd[100]]:
                revert with 0, 18
            if Mask(80, 0, idx) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, idx):
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]]
                u = 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]]
                continue 
            if 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]] > u:
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = t
                u = 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]]
                continue 
            if 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]] >= t:
                idx = Mask(80, 0, idx) + 1
                s = mem[_48 + 96]
                t = t
                u = u
                continue 
            idx = Mask(80, 0, idx) + 1
            s = mem[_48 + 96]
            t = 100 * 10^6 * mem[_48 + 32] / 10^sub_e3505daf[cd[100]]
            u = u
            continue 
        v = 10
        w = 1
        s = sub_e3505daf[cd[100]]
        while s > 1:
            if v > -1 / v:
                revert with 0, 17
            if not bool(s):
                v = v * v
                w = w
                s = uint255(s) * 0.5
                continue 
            v = v * v
            w = v * w
            s = uint255(s) * 0.5
            continue 
        if w > -1 / v:
            revert with 0, 17
        if mem[_48 + 32] and 100 * 10^6 > -1 / mem[_48 + 32]:
            revert with 0, 17
        if not v * w:
            revert with 0, 18
        if Mask(80, 0, idx) == test266151307():
            revert with 0, 17
        if not Mask(80, 0, idx):
            idx = Mask(80, 0, idx) + 1
            s = mem[_48 + 96]
            t = 100 * 10^6 * mem[_48 + 32] / v * w
            u = 100 * 10^6 * mem[_48 + 32] / v * w
            continue 
        if 100 * 10^6 * mem[_48 + 32] / v * w > u:
            idx = Mask(80, 0, idx) + 1
            s = mem[_48 + 96]
            t = t
            u = 100 * 10^6 * mem[_48 + 32] / v * w
            continue 
        if 100 * 10^6 * mem[_48 + 32] / v * w >= t:
            idx = Mask(80, 0, idx) + 1
            s = mem[_48 + 96]
            t = t
            u = u
            continue 
        idx = Mask(80, 0, idx) + 1
        s = mem[_48 + 96]
        t = 100 * 10^6 * mem[_48 + 32] / v * w
        u = u
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = 0x2146573900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 100] = bool(cd[((32 * idx) + cd[68] + 36)])
        if cd[((32 * idx) + cd[68] + 36)]:
            mem[mem[64] + 132] = t
            require ext_code.size(tradingAddress)
            call tradingAddress.0x21465739 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), cd[100], address(cd[((32 * idx) + cd[4] + 36)]), bool(cd[((32 * idx) + cd[68] + 36)]), t
        else:
            mem[mem[64] + 132] = u
            require ext_code.size(tradingAddress)
            call tradingAddress.0x21465739 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), cd[100], address(cd[((32 * idx) + cd[4] + 36)]), bool(cd[((32 * idx) + cd[68] + 36)]), u
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor9:
        if not stor16[msg.sender]:
            revert with 0, '!liquidator'
        if ('cd', 36).length:
            if sub_0e99abc0 > !('cd', 36).length:
                revert with 0, 17
            sub_0e99abc0 += ('cd', 36).length
            if sub_0e99abc0 >= sub_44787b3e:
                sub_0e99abc0 = 0
                if sub_a9b3f177 and sub_44787b3e > -1 / sub_a9b3f177:
                    revert with 0, 17
                require ext_code.size(treasuryAddress)
                call treasuryAddress.0x3b7e1df9 with:
                     gas gas_remaining wei
                    args keeperAddress, sub_a9b3f177 * sub_44787b3e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_795fcedd(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if not stor12[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, '!product-allowed'
        if not sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, '!valid-feed'
        if not stor12[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, '!product-allowed'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 14
        require ext_code.size(sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]])
        staticcall sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]].latestRound() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_90]
        require mem[_90] == mem[_90 + 22 len 10]
        s = 0
        t = 0
        u = 0
        v = 0
        while Mask(80, 0, s) < sub_6fc80708:
            if Mask(80, 0, _92) <= Mask(80, 0, s):
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 10
                s = sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]]
                w = 0
                while s < sub_ed9ee78b[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[0] = s
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                    _238 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_238] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0
                    mem[_238 + 32] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256
                    mem[_238 + 64] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512
                    mem[_238 + 96] = bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672)
                    mem[_238 + 128] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768
                    if sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768:
                        if sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768 > t:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = cd[((32 * idx + 1) + cd[4] + 36)]
                            mem[32] = 10
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x6b62da4000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0
                        mem[mem[64] + 36] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256
                        mem[mem[64] + 68] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512
                        mem[mem[64] + 100] = bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672)
                        if not sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672:
                            mem[mem[64] + 132] = v
                            require ext_code.size(tradingAddress)
                            call tradingAddress.0x6b62da40 with:
                                 gas gas_remaining wei
                                args sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512, bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672), v
                        else:
                            mem[mem[64] + 132] = u
                            require ext_code.size(tradingAddress)
                            call tradingAddress.0x6b62da40 with:
                                 gas gas_remaining wei
                                args sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512, bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672), u
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0 = 0
                        sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256 = 0
                        sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512 = 0
                        sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768 = 0
                    if sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]] == -1:
                        revert with 0, 17
                    sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]]++
                    if w == -1:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 10
                    s = s + 1
                    w = w + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if Mask(80, 0, s):
                if Mask(80, 0, _92) < Mask(80, 0, s):
                    revert with 0, 17
                require ext_code.size(sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]])
                staticcall sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]].getRoundData(uint80 arg1) with:
                        gas gas_remaining wei
                       args (Mask(80, 0, _92) - Mask(80, 0, s) << 176)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                require mem[_187] == mem[_187 + 22 len 10]
                require mem[_187 + 128] == mem[_187 + 150 len 10]
                if mem[_187 + 32] <= 0:
                    revert with 0, '!price-valid'
                if not sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]:
                    if mem[_187 + 32] and 100 * 10^6 > -1 / mem[_187 + 32]:
                        revert with 0, 17
                    if Mask(80, 0, s) == test266151307():
                        revert with 0, 17
                    if not Mask(80, 0, s):
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = 100 * 10^6 * mem[_187 + 32]
                        v = 100 * 10^6 * mem[_187 + 32]
                        continue 
                    if 100 * 10^6 * mem[_187 + 32] > v:
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = u
                        v = 100 * 10^6 * mem[_187 + 32]
                        continue 
                    if 100 * 10^6 * mem[_187 + 32] >= u:
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = u
                        v = v
                        continue 
                    s = Mask(80, 0, s) + 1
                    t = t
                    u = 100 * 10^6 * mem[_187 + 32]
                    v = v
                    continue 
                if bool(bool(sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] < 78)) or bool(bool(sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] < 32)):
                    if mem[_187 + 32] and 100 * 10^6 > -1 / mem[_187 + 32]:
                        revert with 0, 17
                    if not 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 18
                    if Mask(80, 0, s) == test266151307():
                        revert with 0, 17
                    if not Mask(80, 0, s):
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                        v = 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                        continue 
                    if 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] > v:
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = u
                        v = 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                        continue 
                    if 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] >= u:
                        s = Mask(80, 0, s) + 1
                        t = t
                        u = u
                        v = v
                        continue 
                    s = Mask(80, 0, s) + 1
                    t = t
                    u = 100 * 10^6 * mem[_187 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                    v = v
                    continue 
                x = 10
                y = 1
                w = sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                while w > 1:
                    if x > -1 / x:
                        revert with 0, 17
                    if not bool(w):
                        x = x * x
                        y = y
                        w = uint255(w) * 0.5
                        continue 
                    x = x * x
                    y = x * y
                    w = uint255(w) * 0.5
                    continue 
                if y > -1 / x:
                    revert with 0, 17
                if mem[_187 + 32] and 100 * 10^6 > -1 / mem[_187 + 32]:
                    revert with 0, 17
                if not x * y:
                    revert with 0, 18
                if Mask(80, 0, s) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, s):
                    s = Mask(80, 0, s) + 1
                    t = t
                    u = 100 * 10^6 * mem[_187 + 32] / x * y
                    v = 100 * 10^6 * mem[_187 + 32] / x * y
                    continue 
                if 100 * 10^6 * mem[_187 + 32] / x * y > v:
                    s = Mask(80, 0, s) + 1
                    t = t
                    u = u
                    v = 100 * 10^6 * mem[_187 + 32] / x * y
                    continue 
                if 100 * 10^6 * mem[_187 + 32] / x * y >= u:
                    s = Mask(80, 0, s) + 1
                    t = t
                    u = u
                    v = v
                    continue 
                s = Mask(80, 0, s) + 1
                t = t
                u = 100 * 10^6 * mem[_187 + 32] / x * y
                v = v
                continue 
            require ext_code.size(sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]])
            staticcall sub_c6c3f71e[cd[((32 * idx) + cd[4] + 36)]].latestRoundData() with:
                    gas gas_remaining wei
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_167] == mem[_167 + 22 len 10]
            require mem[_167 + 128] == mem[_167 + 150 len 10]
            if not mem[_167 + 96]:
                revert with 0, '!timestamp-valid'
            if mem[_167 + 32] <= 0:
                revert with 0, '!price-valid'
            if not sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]:
                if mem[_167 + 32] and 100 * 10^6 > -1 / mem[_167 + 32]:
                    revert with 0, 17
                if Mask(80, 0, s) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, s):
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = 100 * 10^6 * mem[_167 + 32]
                    v = 100 * 10^6 * mem[_167 + 32]
                    continue 
                if 100 * 10^6 * mem[_167 + 32] > v:
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = u
                    v = 100 * 10^6 * mem[_167 + 32]
                    continue 
                if 100 * 10^6 * mem[_167 + 32] >= u:
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = u
                    v = v
                    continue 
                s = Mask(80, 0, s) + 1
                t = mem[_167 + 96]
                u = 100 * 10^6 * mem[_167 + 32]
                v = v
                continue 
            if bool(bool(sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] < 78)) or bool(bool(sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] < 32)):
                if mem[_167 + 32] and 100 * 10^6 > -1 / mem[_167 + 32]:
                    revert with 0, 17
                if not 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 18
                if Mask(80, 0, s) == test266151307():
                    revert with 0, 17
                if not Mask(80, 0, s):
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                    v = 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                    continue 
                if 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] > v:
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = u
                    v = 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                    continue 
                if 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]] >= u:
                    s = Mask(80, 0, s) + 1
                    t = mem[_167 + 96]
                    u = u
                    v = v
                    continue 
                s = Mask(80, 0, s) + 1
                t = mem[_167 + 96]
                u = 100 * 10^6 * mem[_167 + 32] / 10^sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
                v = v
                continue 
            w = 10
            x = 1
            t = sub_e3505daf[cd[((32 * idx) + cd[4] + 36)]]
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if mem[_167 + 32] and 100 * 10^6 > -1 / mem[_167 + 32]:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if Mask(80, 0, s) == test266151307():
                revert with 0, 17
            if not Mask(80, 0, s):
                s = Mask(80, 0, s) + 1
                t = mem[_167 + 96]
                u = 100 * 10^6 * mem[_167 + 32] / w * x
                v = 100 * 10^6 * mem[_167 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_167 + 32] / w * x > v:
                s = Mask(80, 0, s) + 1
                t = mem[_167 + 96]
                u = u
                v = 100 * 10^6 * mem[_167 + 32] / w * x
                continue 
            if 100 * 10^6 * mem[_167 + 32] / w * x >= u:
                s = Mask(80, 0, s) + 1
                t = mem[_167 + 96]
                u = u
                v = v
                continue 
            s = Mask(80, 0, s) + 1
            t = mem[_167 + 96]
            u = 100 * 10^6 * mem[_167 + 32] / w * x
            v = v
            continue 
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 10
        s = sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]]
        w = 0
        while s < sub_ed9ee78b[cd[((32 * idx) + cd[4] + 36)]]:
            mem[0] = s
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
            _235 = mem[64]
            mem[64] = mem[64] + 160
            mem[_235] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0
            mem[_235 + 32] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256
            mem[_235 + 64] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512
            mem[_235 + 96] = bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672)
            mem[_235 + 128] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768
            if sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768:
                if sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768 > t:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = cd[((32 * idx + 1) + cd[4] + 36)]
                    mem[32] = 10
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x6b62da4000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0
                mem[mem[64] + 36] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256
                mem[mem[64] + 68] = sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512
                mem[mem[64] + 100] = bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672)
                if not sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672:
                    mem[mem[64] + 132] = v
                    require ext_code.size(tradingAddress)
                    call tradingAddress.0x6b62da40 with:
                         gas gas_remaining wei
                        args sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512, bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672), v
                else:
                    mem[mem[64] + 132] = u
                    require ext_code.size(tradingAddress)
                    call tradingAddress.0x6b62da40 with:
                         gas gas_remaining wei
                        args sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256, sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512, bool(sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_672), u
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_0 = 0
                sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_256 = 0
                sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_512 = 0
                sub_3616ff4c[cd[((32 * idx) + cd[4] + 36)]][s].field_768 = 0
            if sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]] == -1:
                revert with 0, 17
            sub_709ebebd[cd[((32 * idx) + cd[4] + 36)]]++
            if w == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 10
            s = s + 1
            w = w + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
