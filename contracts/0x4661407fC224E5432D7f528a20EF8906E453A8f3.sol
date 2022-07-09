contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address governorAddress; offset 16
uint256 stor0; offset 16
address stor1;
mapping of address oracles;
address defaultOracleAddress;

function governor() payable {
    return governorAddress
}

function defaultOracle() payable {
    return defaultOracleAddress
}

function oracles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return oracles[arg1]
}

function _fallback() payable {
    revert
}

function acceptGovernorship() payable {
    if stor1 != msg.sender:
        revert with 0, 'not-the-proposed-governor'
    emit UpdatedGovernor(governorAddress, stor1);
    Mask(240, 0, stor0.field_16) = stor1
    stor1 = 0
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'proposed-governor-is-zero'
    stor1 = arg1
}

function setDefaultOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not-governor'
    if defaultOracleAddress == arg1:
        revert with 0, 'new-oracle-is-same-as-current'
    emit 0x91f0076b: defaultOracleAddress, arg1
    defaultOracleAddress = arg1
}

function sub_89f74c0c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'not-governor'
    if not ('cd', 4).length:
        revert with 0, 'invalid-arrays-length'
    if not ('cd', 36).length:
        revert with 0, 'invalid-arrays-length'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'invalid-arrays-length'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'an-asset-has-null-address'
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if address(cd[((32 * idx) + cd[36] + 36)]) == oracles[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'a-new-oracle-same-as-current'
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = oracles[address(cd[((32 * idx) + cd[4] + 36)])]
        mem[mem[64] + 64] = address(cd[((32 * idx) + cd[36] + 36)])
        emit OracleUpdated(address(cd[((32 * idx) + cd[4] + 36)]), oracles[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[36] + 36)]));
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        oracles[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ee957996(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if oracles[address(arg1)]:
        require ext_code.size(oracles[address(arg1)])
        staticcall oracles[address(arg1)].getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
    else:
        if not defaultOracleAddress:
            revert with 0, 'asset-without-oracle'
        require ext_code.size(defaultOracleAddress)
        staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid-price'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and ext_call.return_data[0] > -1 / arg2:
            revert with 0, 17
        return (arg2 * ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if arg2 and ext_call.return_data[0] > -1 / arg2:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (arg2 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
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
        revert with 0, 17
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (arg2 * ext_call.return_data[0] / s * t)
}

function sub_57f1915d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if oracles[address(arg1)]:
        require ext_code.size(oracles[address(arg1)])
        staticcall oracles[address(arg1)].getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
    else:
        if not defaultOracleAddress:
            revert with 0, 'asset-without-oracle'
        require ext_code.size(defaultOracleAddress)
        staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid-price'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg2 / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg2 * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
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
        revert with 0, 17
    if arg2 and s * t > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (arg2 * s * t / ext_call.return_data[0])
}

function initialize(address[] arg1, address[] arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if uint8(stor0.field_8):
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        emit UpdatedGovernor(0, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
            emit UpdatedGovernor(0, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
                emit UpdatedGovernor(0, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
                emit UpdatedGovernor(0, msg.sender);
                uint8(stor0.field_8) = 0
    if arg1.length != arg2.length:
        revert with 0, 'invalid-arrays-length'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'an-asset-has-null-address'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if address(cd[((32 * idx) + arg2 + 36)]) == oracles[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'a-new-oracle-same-as-current'
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = oracles[address(cd[((32 * idx) + arg1 + 36)])]
        mem[mem[64] + 64] = address(cd[((32 * idx) + arg2 + 36)])
        emit OracleUpdated(address(cd[((32 * idx) + arg1 + 36)]), oracles[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg2 + 36)]));
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        oracles[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    defaultOracleAddress = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function convert(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if oracles[address(arg1)]:
        require ext_code.size(oracles[address(arg1)])
        staticcall oracles[address(arg1)].getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args arg1
    else:
        if not defaultOracleAddress:
            revert with 0, 'asset-without-oracle'
        require ext_code.size(defaultOracleAddress)
        staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid-price'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if oracles[address(arg2)]:
            require ext_code.size(oracles[address(arg2)])
            staticcall oracles[address(arg2)].getPriceInUsd(address arg1) with:
                    gas gas_remaining wei
                   args arg2
        else:
            if not defaultOracleAddress:
                revert with 0, 'asset-without-oracle'
            require ext_code.size(defaultOracleAddress)
            staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                    gas gas_remaining wei
                   args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'invalid-price'
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg3 * ext_call.return_data[0] and 1 > -1 / arg3 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg3 * ext_call.return_data[0] and 10^ext_call.return_data[31 len 1] > -1 / arg3 * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
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
            revert with 0, 17
        if arg3 * ext_call.return_data[0] and s * t > -1 / arg3 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[0] * s * t / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if oracles[address(arg2)]:
            require ext_code.size(oracles[address(arg2)])
            staticcall oracles[address(arg2)].getPriceInUsd(address arg1) with:
                    gas gas_remaining wei
                   args arg2
        else:
            if not defaultOracleAddress:
                revert with 0, 'asset-without-oracle'
            require ext_code.size(defaultOracleAddress)
            staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                    gas gas_remaining wei
                   args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'invalid-price'
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and 1 > -1 / arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
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
            revert with 0, 17
        if arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and s * t > -1 / arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * s * t / ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
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
        revert with 0, 17
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if oracles[address(arg2)]:
        require ext_code.size(oracles[address(arg2)])
        staticcall oracles[address(arg2)].getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args arg2
    else:
        if not defaultOracleAddress:
            revert with 0, 'asset-without-oracle'
        require ext_code.size(defaultOracleAddress)
        staticcall defaultOracleAddress.getPriceInUsd(address arg1) with:
                gas gas_remaining wei
               args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid-price'
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 * ext_call.return_data[0] / s * t and 1 > -1 / arg3 * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[0] / s * t / ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if arg3 * ext_call.return_data[0] / s * t and 10^ext_call.return_data[31 len 1] > -1 / arg3 * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (arg3 * ext_call.return_data[0] / s * t * 10^ext_call.return_data[31 len 1] / ext_call.return_data[0])
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
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
        revert with 0, 17
    if arg3 * ext_call.return_data[0] / s * t and u * v > -1 / arg3 * ext_call.return_data[0] / s * t:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (arg3 * ext_call.return_data[0] / s * t * u * v / ext_call.return_data[0])
}



}
