contract main {




// =====================  Runtime code  =====================


const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
address sub_bc5da4a8Address;
mapping of address sub_d66e6dd3;
mapping of address sub_e11ca345;
mapping of uint256 sub_ae23e6c7;

function governor() payable {
    return address(governorAddress)
}

function sub_ae23e6c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ae23e6c7[arg1]
}

function sub_bc5da4a8(?) payable {
    return sub_bc5da4a8Address
}

function sub_d66e6dd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d66e6dd3[arg1]
}

function sub_e11ca345(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e11ca345[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setRefETHUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    sub_bc5da4a8Address = arg1
    emit SetRefETHUSD(arg1);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function sub_13b4b912(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens & maxDelays length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 69
        sub_ae23e6c7[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit SetMaxDelayTime(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7a8ee0d1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'tokens & refs length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 68
        sub_e11ca345[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit SetRefUSD(address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d8705365(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'tokens & refs length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 67
        sub_d66e6dd3[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit SetRefETH(address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getETHPx(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        return 0x10000000000000000000000000000
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return 0x10000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not sub_ae23e6c7[address(arg1)]:
        revert with 0, 'max delay time not set'
    if sub_d66e6dd3[address(arg1)]:
        require ext_code.size(sub_d66e6dd3[address(arg1)])
        staticcall sub_d66e6dd3[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if block.timestamp < sub_ae23e6c7[address(arg1)]:
            revert with 0, 17
        if ext_call.return_data[96] < block.timestamp - sub_ae23e6c7[address(arg1)]:
            revert with 0, 'delayed update time'
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[32] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if ext_call.return_data[32] > test266151307():
                revert with 0, 17
            return (ext_call.return_data[32] << 112)
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[32] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if ext_call.return_data[32] > test266151307():
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (ext_call.return_data[32] << 112 / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] > test266151307():
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (ext_call.return_data[32] << 112 / s * t)
    if not sub_e11ca345[address(arg1)]:
        revert with 0, 'no valid price reference for token'
    require ext_code.size(sub_e11ca345[address(arg1)])
    staticcall sub_e11ca345[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if block.timestamp < sub_ae23e6c7[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[96] < block.timestamp - sub_ae23e6c7[address(arg1)]:
        revert with 0, 'delayed update time'
    require ext_code.size(sub_bc5da4a8Address)
    staticcall sub_bc5da4a8Address.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if block.timestamp < sub_ae23e6c7[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[96] < block.timestamp - sub_ae23e6c7[address(arg1)]:
        revert with 0, 'delayed avax-usd update time'
    if uint8(ext_call.return_data[0]) <= 18:
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if 18 < uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not -uint8(ext_call.return_data[0]) + 18:
            if ext_call.return_data[32] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if ext_call.return_data[32] > test266151307():
                revert with 0, 17
            if Mask(144, 0, ext_call.return_data[32]) and 1 > -1 / ext_call.return_data[32] << 112:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] << 112 / ext_call.return_data[32])
        if bool(bool(-uint8(ext_call.return_data[0]) + 18 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 18 < 32)):
            if ext_call.return_data[32] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if ext_call.return_data[32] > test266151307():
                revert with 0, 17
            if Mask(144, 0, ext_call.return_data[32]) and 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] << 112:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (ext_call.return_data[32] << 112 * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[32])
        s = 10
        t = 1
        idx = -uint8(ext_call.return_data[0]) + 18
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
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] > test266151307():
            revert with 0, 17
        if Mask(144, 0, ext_call.return_data[32]) and s * t > -1 / ext_call.return_data[32] << 112:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[32] << 112 * s * t / ext_call.return_data[32])
    if uint8(ext_call.return_data[0]) < 18:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]) - 18:
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] > test266151307():
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[32] << 112 / ext_call.return_data[32])
    if bool(bool(uint8(ext_call.return_data[0]) - 18 < 78)) or bool(bool(uint8(ext_call.return_data[0]) - 18 < 32)):
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if ext_call.return_data[32] > test266151307():
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 18
        return (ext_call.return_data[32] << 112 / ext_call.return_data[32] / 10^(uint8(ext_call.return_data[0]) - 18))
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0]) - 18
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
    if ext_call.return_data[32] < 0:
        revert with 0, 'SafeCast: value must be positive'
    if ext_call.return_data[32] < 0:
        revert with 0, 'SafeCast: value must be positive'
    if ext_call.return_data[32] > test266151307():
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[32] << 112 / ext_call.return_data[32] / s * t)
}



}
