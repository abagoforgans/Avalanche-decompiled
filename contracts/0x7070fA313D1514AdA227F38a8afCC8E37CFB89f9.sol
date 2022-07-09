contract main {




// =====================  Runtime code  =====================


const BLOCKS_PER_YEAR = 2336000

const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor54;
array of struct stor55;
uint256 totalSupply;
uint256 sub_4dac5650;
uint8 decimals;
uint8 isActive; offset 168
uint128 stor58; offset 168
address debtTokenAddress; offset 8
uint256 interestRate;

function totalSupply() payable {
    return totalSupply
}

function isActive() payable {
    return bool(isActive)
}

function decimals() payable {
    return decimals
}

function sub_4dac5650(?) payable {
    return sub_4dac5650
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function interestRate() payable {
    return interestRate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function controller() payable {
    return controllerAddress
}

function debtToken() payable {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_2ff7709e(?) payable {
    return (interestRate / 2336000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function governor() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    if not arg1:
        revert with 0, 'burn-from-the-zero-address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'burn-amount-exceeds-balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function toggleIsActive() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    emit 0xcaaaa88c: bool(isActive), not isActive
    stor58 = Mask(88, 0, not isActive)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'transfer-from-the-zero-address'
    if not arg1:
        revert with 0, 'transfer-to-the-zero-address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'transfer-amount-exceeds-balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 'decreased-allowance-below-zero'
    if not msg.sender:
        revert with 0, 'approve-from-the-zero-address'
    if not arg1:
        revert with 0, 'approve-to-the-zero-address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_f9bd04e4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if sub_4dac5650 == arg1:
        revert with 0, 'new-same-as-current'
    emit 0xc58cd613: sub_4dac5650, arg1
    sub_4dac5650 = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'new-controller-address-is-zero'
    controllerAddress = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'transfer-from-the-zero-address'
    if not arg2:
        revert with 0, 'transfer-to-the-zero-address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'transfer-amount-exceeds-balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if allowance[address(arg1)][msg.sender] != -1:
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'amount-exceeds-allowance'
        if not arg1:
            revert with 0, 'approve-from-the-zero-address'
        if not msg.sender:
            revert with 0, 'approve-to-the-zero-address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    if not isActive:
        revert with 0, 'synthetic-inactive'
    if not arg1:
        revert with 0, 'mint-to-the-zero-address'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xeaada382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if totalSupply > !arg2:
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xee957996 with:
            gas gas_remaining wei
           args address(this.address), totalSupply + arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_4dac5650:
        revert with 0, 'surpass-max-total-supply'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit 0xfeddf252: arg2, 0, arg1
}

function accrueInterest() payable {
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0xa6afed95 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not isActive:
            revert with 0, 'synthetic-inactive'
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'mint-to-the-zero-address'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), totalSupply + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_4dac5650:
            revert with 0, 'surpass-max-total-supply'
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        totalSupply += ext_call.return_data[0]
        if balanceOf[address(ext_call.return_data[0])] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
        emit 0xfeddf252: ext_call.return_data[0], 0, address(ext_call.return_data[0])
}

function updateInterestRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0xa6afed95 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not isActive:
            revert with 0, 'synthetic-inactive'
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'mint-to-the-zero-address'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), totalSupply + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_4dac5650:
            revert with 0, 'surpass-max-total-supply'
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        totalSupply += ext_call.return_data[0]
        if balanceOf[address(ext_call.return_data[0])] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
        emit 0xfeddf252: ext_call.return_data[0], 0, address(ext_call.return_data[0])
    if interestRate == arg1:
        revert with 0, 'new-same-as-current'
    emit InterestRateUpdated(interestRate, arg1);
    interestRate = arg1
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_7c48da96(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] == uint8(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not address(cd[132]):
        revert with 0, 'debt-token-is-null'
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if uint8(cd[68]) != ext_call.return_data[31 len 1]:
        revert with 0, 'debt-decimals-is-not-the-same'
    if not address(cd[100]):
        revert with 0, 'controller-address-is-zero'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            uint8(stor0.field_8) = 0
    controllerAddress = address(cd[100])
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor54.length = 0
            idx = 0
            while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor54.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor54[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor54.length = 0
            idx = 0
            while stor54.length.field_1 + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor54.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor54[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor54.length.field_1 + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor55.length = 0
            idx = 0
            while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor55.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor55[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor55.length = 0
            idx = 0
            while stor55.length.field_1 + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor55.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor55[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor55.length.field_1 + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    decimals = uint8(cd[68])
    debtTokenAddress = address(cd[132])
    isActive = 1
    interestRate = cd[164]
    sub_4dac5650 = cd[196]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function repay(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    call controllerAddress.0xecf3a3f9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'not-shutdown'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, 'amount-is-zero'
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0xa6afed95 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(controllerAddress)
    if ext_call.return_data[0]:
        staticcall controllerAddress.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not isActive:
            revert with 0, 'synthetic-inactive'
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'mint-to-the-zero-address'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), totalSupply + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_4dac5650:
            revert with 0, 'surpass-max-total-supply'
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        totalSupply += ext_call.return_data[0]
        if balanceOf[address(ext_call.return_data[0])] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
        emit 0xfeddf252: ext_call.return_data[0], 0, address(ext_call.return_data[0])
    call controllerAddress.0x7c0f59f4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(controllerAddress)
        call controllerAddress.0xf6092809 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xeaada382 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xee957996 with:
                    gas gas_remaining wei
                   args address(this.address), ext_call.return_data[0] - arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'debt-lt-floor'
        if not msg.sender:
            revert with 0, 'burn-from-the-zero-address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'burn-amount-exceeds-balance'
        balanceOf[address(msg.sender)] -= arg2
        if totalSupply < arg2:
            revert with 0, 17
        totalSupply -= arg2
        emit 0xfeddf252: arg2, msg.sender, 0
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x9dc29fac with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x5f6b9048: arg2, 0, arg1
    else:
        if not arg2:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x61d027b3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not msg.sender:
                revert with 0, 'transfer-from-the-zero-address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'transfer-to-the-zero-address'
            if balanceOf[address(msg.sender)] < 0:
                revert with 0, 'transfer-amount-exceeds-balance'
            if balanceOf[ext_call.return_data[12 len 20]] > -1:
                revert with 0, 17
            emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
            if arg2 < 0:
                revert with 0, 17
            require ext_code.size(controllerAddress)
            call controllerAddress.0xf6092809 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'debt-lt-floor'
            if not msg.sender:
                revert with 0, 'burn-from-the-zero-address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'burn-amount-exceeds-balance'
            balanceOf[address(msg.sender)] -= arg2
            if totalSupply < arg2:
                revert with 0, 17
            totalSupply -= arg2
            emit 0xfeddf252: arg2, msg.sender, 0
            require ext_code.size(debtTokenAddress)
            call debtTokenAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x5f6b9048: arg2, 0, arg1
        else:
            if not ext_call.return_data[0]:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x61d027b3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not msg.sender:
                    revert with 0, 'transfer-from-the-zero-address'
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'transfer-to-the-zero-address'
                if balanceOf[address(msg.sender)] < 0:
                    revert with 0, 'transfer-amount-exceeds-balance'
                if balanceOf[ext_call.return_data[12 len 20]] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, msg.sender, address(ext_call.return_data[0])
                if arg2 < 0:
                    revert with 0, 17
                require ext_code.size(controllerAddress)
                call controllerAddress.0xf6092809 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(debtTokenAddress)
                    staticcall debtTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'debt-lt-floor'
                if not msg.sender:
                    revert with 0, 'burn-from-the-zero-address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'burn-amount-exceeds-balance'
                balanceOf[address(msg.sender)] -= arg2
                if totalSupply < arg2:
                    revert with 0, 17
                totalSupply -= arg2
                emit 0xfeddf252: arg2, msg.sender, 0
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x5f6b9048: arg2, 0, arg1
            else:
                if arg2 and ext_call.return_data[0] > -1 / arg2:
                    revert with 0, 17
                if arg2 * ext_call.return_data[0] > -500000000000000001:
                    revert with 0, 17
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x61d027b3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not msg.sender:
                    revert with 0, 'transfer-from-the-zero-address'
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'transfer-to-the-zero-address'
                if balanceOf[address(msg.sender)] < (arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 'transfer-amount-exceeds-balance'
                balanceOf[address(msg.sender)] -= (arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if balanceOf[ext_call.return_data[12 len 20]] > !((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                balanceOf[ext_call.return_data[12 len 20]] += (arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                emit 0xfeddf252: ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18), msg.sender, address(ext_call.return_data[0])
                if arg2 < (arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                require ext_code.size(controllerAddress)
                call controllerAddress.0xf6092809 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xeaada382 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(debtTokenAddress)
                    staticcall debtTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2 - ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xee957996 with:
                            gas gas_remaining wei
                           args address(this.address), ext_call.return_data[0] - arg2 + ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'debt-lt-floor'
                if not msg.sender:
                    revert with 0, 'burn-from-the-zero-address'
                if balanceOf[address(msg.sender)] < arg2 - ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 'burn-amount-exceeds-balance'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                if totalSupply < arg2 - ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                totalSupply = totalSupply - arg2 + ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                emit 0xfeddf252: (arg2 - ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)), msg.sender, 0
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x5f6b9048: arg2, (arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, arg1
    stor1 = 1
}

function issue(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(controllerAddress)
    call controllerAddress.0xecf3a3f9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'not-shutdown'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x4dfb6518 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'synthetic-inexistent'
    if not isActive:
        revert with 0, 'synthetic-inactive'
    if arg1 <= 0:
        revert with 0, 'amount-is-zero'
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.0xa6afed95 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(controllerAddress)
    if ext_call.return_data[0]:
        staticcall controllerAddress.0x61d027b3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not isActive:
            revert with 0, 'synthetic-inactive'
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'mint-to-the-zero-address'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), totalSupply + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_4dac5650:
            revert with 0, 'surpass-max-total-supply'
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        totalSupply += ext_call.return_data[0]
        if balanceOf[address(ext_call.return_data[0])] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0]
        emit 0xfeddf252: ext_call.return_data[0], 0, address(ext_call.return_data[0])
    staticcall controllerAddress.0xdde3ab95 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xeaada382 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x57f1915d with:
            gas gas_remaining wei
           args address(this.address), ext_call.return_data[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not-enough-collateral'
    require ext_code.size(controllerAddress)
    call controllerAddress.0xf6092809 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), ext_call.return_data[0] + arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'debt-lt-floor'
    require ext_code.size(controllerAddress)
    call controllerAddress.0x2a9133c1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not isActive:
            revert with 0, 'synthetic-inactive'
        if not arg2:
            revert with 0, 'mint-to-the-zero-address'
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xeaada382 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if totalSupply > !arg1:
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xee957996 with:
                gas gas_remaining wei
               args address(this.address), totalSupply + arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_4dac5650:
            revert with 0, 'surpass-max-total-supply'
        if totalSupply > !arg1:
            revert with 0, 17
        totalSupply += arg1
        if balanceOf[address(arg2)] > !arg1:
            revert with 0, 17
        balanceOf[address(arg2)] += arg1
        emit 0xfeddf252: arg1, 0, arg2
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x8ed56bdc: arg1, 0, msg.sender, arg2
    else:
        if not arg1:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x61d027b3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not isActive:
                revert with 0, 'synthetic-inactive'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'mint-to-the-zero-address'
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xeaada382 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if totalSupply > -1:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xee957996 with:
                    gas gas_remaining wei
                   args address(this.address), totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > sub_4dac5650:
                revert with 0, 'surpass-max-total-supply'
            if totalSupply > -1:
                revert with 0, 17
            if balanceOf[address(ext_call.return_data[0])] > -1:
                revert with 0, 17
            emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
            if arg1 < 0:
                revert with 0, 17
            if not isActive:
                revert with 0, 'synthetic-inactive'
            if not arg2:
                revert with 0, 'mint-to-the-zero-address'
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xeaada382 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if totalSupply > !arg1:
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xee957996 with:
                    gas gas_remaining wei
                   args address(this.address), totalSupply + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > sub_4dac5650:
                revert with 0, 'surpass-max-total-supply'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(arg2)] > !arg1:
                revert with 0, 17
            balanceOf[address(arg2)] += arg1
            emit 0xfeddf252: arg1, 0, arg2
            require ext_code.size(debtTokenAddress)
            call debtTokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x8ed56bdc: arg1, 0, msg.sender, arg2
        else:
            if not ext_call.return_data[0]:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x61d027b3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not isActive:
                    revert with 0, 'synthetic-inactive'
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if totalSupply > -1:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                if totalSupply > -1:
                    revert with 0, 17
                if balanceOf[address(ext_call.return_data[0])] > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, 0, address(ext_call.return_data[0])
                if arg1 < 0:
                    revert with 0, 17
                if not isActive:
                    revert with 0, 'synthetic-inactive'
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if totalSupply > !arg1:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply + arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                if totalSupply > !arg1:
                    revert with 0, 17
                totalSupply += arg1
                if balanceOf[address(arg2)] > !arg1:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg1
                emit 0xfeddf252: arg1, 0, arg2
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x8ed56bdc: arg1, 0, msg.sender, arg2
            else:
                if arg1 and ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if arg1 * ext_call.return_data[0] > -500000000000000001:
                    revert with 0, 17
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x61d027b3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not isActive:
                    revert with 0, 'synthetic-inactive'
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if totalSupply > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply + ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                if totalSupply > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                totalSupply += (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if balanceOf[address(ext_call.return_data[0])] > !((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                balanceOf[address(ext_call.return_data[0])] += (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                emit 0xfeddf252: ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18), 0, address(ext_call.return_data[0])
                if arg1 < (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 17
                if not isActive:
                    revert with 0, 'synthetic-inactive'
                if not arg2:
                    revert with 0, 'mint-to-the-zero-address'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0xeaada382 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if totalSupply > !(arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)):
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xee957996 with:
                        gas gas_remaining wei
                       args address(this.address), totalSupply + arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > sub_4dac5650:
                    revert with 0, 'surpass-max-total-supply'
                if totalSupply > !(arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)):
                    revert with 0, 17
                totalSupply = totalSupply + arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                if balanceOf[address(arg2)] > !(arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                emit 0xfeddf252: (arg1 - ((arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)), 0, arg2
                require ext_code.size(debtTokenAddress)
                call debtTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x8ed56bdc: arg1, (arg1 * ext_call.return_data[0]) + 5 * 10^17 / 10^18, msg.sender, arg2
    stor1 = 1
}



}
