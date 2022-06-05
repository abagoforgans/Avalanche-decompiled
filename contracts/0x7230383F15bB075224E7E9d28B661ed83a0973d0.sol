contract main {




// =====================  Runtime code  =====================


#
#  - sub_d85eb6b0(?)
#  - sub_f0c462b8(?)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5faf43f3(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkCost(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkExtract(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPricePeg() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[0]), 
                   (10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0],
                   ext_call.return_data[0]
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPricePeg() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[0]), 
                   (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18) - ext_call.return_data[0],
                   ext_call.return_data[0]
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
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
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPricePeg() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPriceSource() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[0]), 
               (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) - ext_call.return_data[0],
               ext_call.return_data[0]
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(-ext_call.return_data[31 len 1] + 18):
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPricePeg() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18:
                return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[0]), 
                   (10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0],
                   ext_call.return_data[0]
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
            if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPricePeg() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).getPriceSource() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 'NH{q', 17
            if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18:
                return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            return bool(ext_call.return_data[0]), 
                   (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18) - ext_call.return_data[0],
                   ext_call.return_data[0]
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 18)
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
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPricePeg() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPriceSource() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18:
            return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[0]), 
               (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) - ext_call.return_data[0],
               ext_call.return_data[0]
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
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
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(-ext_call.return_data[31 len 1] + 18):
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPricePeg() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPriceSource() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18:
            return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[0]), 
               (10^10 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0],
               ext_call.return_data[0]
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 18) < 32)):
        if ext_call.return_data[0] and 10^uint8(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPricePeg() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).getPriceSource() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
            revert with 'NH{q', 17
        if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) > -1 / 10^10 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).checkLiquidation(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18:
            return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        return bool(ext_call.return_data[0]), 
               (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * 10^uint8(-uint8(ext_call.return_data[0]) + 18) / 10^18) - ext_call.return_data[0],
               ext_call.return_data[0]
    u = 10
    v = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 18)
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).getPricePeg() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).getPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    if 10^10 * ext_call.return_data[0] and ext_call.return_data[0] * u * v > -1 / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).checkLiquidation(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 <= 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18:
        return bool(ext_call.return_data[0]), 0, ext_call.return_data[0]
    if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    return bool(ext_call.return_data[0]), 
           (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) - ext_call.return_data[0],
           ext_call.return_data[0]
}



}
