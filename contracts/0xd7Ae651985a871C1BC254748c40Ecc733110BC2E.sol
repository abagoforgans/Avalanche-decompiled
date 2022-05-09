contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
address adminAddress;
address guardianAddress;
address joeAddress;
address sub_30342ddcAddress;
address sub_ad281929Address;
mapping of address aggregators;

function aggregators(address arg1) payable {
    require calldata.size - 4 >= 32
    return aggregators[arg1]
}

function sub_30342ddc(?) payable {
    return sub_30342ddcAddress
}

function guardian() payable {
    return guardianAddress
}

function sub_ad281929(?) payable {
    return sub_ad281929Address
}

function joeAddress() payable {
    return joeAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function _setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only the admin may set new admin'
    adminAddress = arg1
    emit SetAdmin(arg1);
}

function _setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x736f6e6c79207468652061646d696e206d617920736574206e65772067756172646961,
                    mem[199 len 29]
    guardianAddress = arg1
    emit SetGuardian(arg1);
}

function setDirectPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x656f6e6c79207468652061646d696e206d61792073657420746865206469726563742070726963,
                    mem[203 len 25]
    stor0[address(arg1)] = arg2
}

function sub_5e7f71df(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe6f6e6c79207468652061646d696e206d6179207365742074686520756e6465726c79696e672070726963,
                    mem[207 len 21]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0[ext_call.return_data[12 len 20]] = arg2
}

function _setAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        if guardianAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        50,
                        0x656f6e6c79207468652061646d696e206f7220677561726469616e206d617920736574207468652061676772656761746f72,
                        mem[214 len 14]
    if arg2.length != arg1.length:
        revert with 0, 'mismatched data'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if address(cd[((32 * idx) + arg2 + 36)]):
            if adminAddress != msg.sender:
                revert with 0, 32, 38, 0x6e677561726469616e206d6179206f6e6c7920636c656172207468652061676772656761746f, mem[202 len 26]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        aggregators[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit AggregatorUpdated(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not aggregators[address(arg1)]:
        require ext_code.size(arg1)
        staticcall arg1.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor0[ext_call.return_data[12 len 20]]:
            revert with 0, 'invalid price'
        return stor0[ext_call.return_data[12 len 20]]
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] <= 0:
        revert with 0, 'invalid price'
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        require ext_code.size(arg1)
        staticcall arg1.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ad281929Address != arg1:
            if ext_call.return_data[31 len 1] <= 18:
                return 0
        else:
            require ext_code.size(joeAddress)
            staticcall joeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_30342ddcAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_30342ddcAddress)
            staticcall sub_30342ddcAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            if uint8(ext_call.return_data[0]) <= 18:
                return 0
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'divide by zero'
        return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
    if not 10^(-uint8(ext_call.return_data[0]) + 18):
        require ext_code.size(arg1)
        staticcall arg1.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ad281929Address != arg1:
            if ext_call.return_data[31 len 1] <= 18:
                return 0
        else:
            require ext_code.size(joeAddress)
            staticcall joeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_30342ddcAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_30342ddcAddress)
            staticcall sub_30342ddcAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            if uint8(ext_call.return_data[0]) <= 18:
                return 0
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'divide by zero'
        return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
    require ext_call.return_data[32]
    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / ext_call.return_data[32] != 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 'multiplication overflow'
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ad281929Address != arg1:
        if ext_call.return_data[31 len 1] > 18:
            if not 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 'divide by zero'
            return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^(uint8(ext_call.return_data[0]) - 18))
        if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
            return 0
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            return 0
        require 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]
        if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] != 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'multiplication overflow'
        return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
    require ext_code.size(joeAddress)
    staticcall joeAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_30342ddcAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_30342ddcAddress)
    staticcall sub_30342ddcAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
            if uint8(ext_call.return_data[0]) <= 18:
                return 0
            if not 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 'divide by zero'
            return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
        if not 0 / ext_call.return_data[0]:
            if uint8(ext_call.return_data[0]) <= 18:
                return 0
            if not 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 'divide by zero'
            return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
        require 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]
        if 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] != 0 / ext_call.return_data[0]:
            revert with 0, 'multiplication overflow'
        if uint8(ext_call.return_data[0]) > 18:
            if not 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 'divide by zero'
            return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 / 10^(uint8(ext_call.return_data[0]) - 18))
        if not 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18:
            return 0
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            return 0
        require 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18
        if 10^(-uint8(ext_call.return_data[0]) + 18) * 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 / 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 != 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'multiplication overflow'
        return (10^(-uint8(ext_call.return_data[0]) + 18) * 0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18)
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'divide by zero'
    if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
        if uint8(ext_call.return_data[0]) <= 18:
            return 0
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'divide by zero'
        return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        if uint8(ext_call.return_data[0]) <= 18:
            return 0
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'divide by zero'
        return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
    require 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] != 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    if uint8(ext_call.return_data[0]) > 18:
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'divide by zero'
        return (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 / 10^(uint8(ext_call.return_data[0]) - 18))
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18:
        return 0
    if not 10^(-uint8(ext_call.return_data[0]) + 18):
        return 0
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18
    if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18 != 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 'multiplication overflow'
    return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^18)
}



}
