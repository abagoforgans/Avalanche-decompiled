contract main {




// =====================  Runtime code  =====================


#
#  - deleverageUntilNotOverLevered()
#  - releverage()
#  - setFactorNom(uint256 arg1)
#  - setRounds(uint256 arg1)
#  - deleverage()
#
const BORROW_RATE_MAX_HARD = 799


address rewardsAddress;
address jUSDTAddress;
address comptrollerAddress;
address joeTokenAddress;
address usdtAddress;
address wavaxAddress;
address owner;
address harvesterAddress;
address unirouterAddress;
uint256 factorNom;
uint256 factorDenom;
uint256 rounds;
array of address joeToUSDT;
array of address wavaxToUSDT;
uint256 supplyBal;
uint256 borrowBal;
uint256 supplyBalTargeted;
uint256 supplyBalMin;
uint8 stor18;
uint256 stor18; offset 8

function wavax() {
    return wavaxAddress
}

function supplyBalMin() {
    return supplyBalMin
}

function unirouter() {
    return unirouterAddress
}

function usdt() {
    return usdtAddress
}

function wavaxToUSDT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < wavaxToUSDT.length
    return wavaxToUSDT[arg1]
}

function harvester() {
    return harvesterAddress
}

function comptroller() {
    return comptrollerAddress
}

function owner() {
    return owner
}

function factorDenom() {
    return factorDenom
}

function rewards() {
    return rewardsAddress
}

function factorNom() {
    return factorNom
}

function rounds() {
    return rounds
}

function supplyBalTargeted() {
    return supplyBalTargeted
}

function borrowBal() {
    return borrowBal
}

function jUSDT() {
    return jUSDTAddress
}

function joeToUSDT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < joeToUSDT.length
    return joeToUSDT[arg1]
}

function joeToken() {
    return joeTokenAddress
}

function supplyBal() {
    return supplyBal
}

function _fallback() payable {
    revert
}

function setHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    harvesterAddress = arg1
}

function setRewards(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    uint8(stor18.field_0) = uint8(arg1)
    Mask(248, 0, stor18.field_8) = Mask(248, 0, arg2)
}

function getCollateral(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and factorNom > -1 / arg1:
        revert with 'NH{q', 17
    if not factorDenom:
        revert with 'NH{q', 18
    return (arg1 * factorNom / factorDenom)
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.0xdb006a75 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.0x852a12e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function repayBorrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function totalUSDT() {
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -supplyBal - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + supplyBal < borrowBal:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + supplyBal - borrowBal)
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateBalance() {
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    supplyBal = ext_call.return_data[0]
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    borrowBal = ext_call.return_data[0]
    if borrowBal and factorDenom > -1 / borrowBal:
        revert with 'NH{q', 17
    if not factorNom:
        revert with 'NH{q', 18
    supplyBalTargeted = borrowBal * factorDenom / factorNom
    if borrowBal and factorDenom > -1 / borrowBal:
        revert with 'NH{q', 17
    supplyBalMin = borrowBal * factorDenom / 799
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg3.length, data=arg3[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function deleverageOnce() {
    require msg.sender == harvesterAddress
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    supplyBal = ext_call.return_data[0]
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    borrowBal = ext_call.return_data[0]
    if borrowBal and factorDenom > -1 / borrowBal:
        revert with 'NH{q', 17
    if not factorNom:
        revert with 'NH{q', 18
    supplyBalTargeted = borrowBal * factorDenom / factorNom
    if borrowBal and factorDenom > -1 / borrowBal:
        revert with 'NH{q', 17
    supplyBalMin = borrowBal * factorDenom / 799
    if supplyBal > supplyBalTargeted:
        if supplyBal < supplyBalTargeted:
            revert with 'NH{q', 17
        require ext_code.size(jUSDTAddress)
        call jUSDTAddress.0x852a12e3 with:
             gas gas_remaining wei
            args (supplyBal - supplyBalTargeted)
    else:
        if supplyBal < supplyBalMin:
            revert with 'NH{q', 17
        require ext_code.size(jUSDTAddress)
        call jUSDTAddress.0x852a12e3 with:
             gas gas_remaining wei
            args (supplyBal - supplyBalMin)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(jUSDTAddress)
    call jUSDTAddress.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function harvest() {
    require msg.sender == harvesterAddress
    mem[128] = jUSDTAddress
    if uint8(stor18.field_0):
        mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[164] = 0
        idx = 0
        s = 128
        t = 292
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(rewardsAddress)
        call rewardsAddress.claimReward(uint8 rg1, address rg2, address[] rg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, 1, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(joeTokenAddress)
    staticcall joeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 356
        while idx < joeToUSDT.length:
            mem[t] = joeToUSDT[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, joeToUSDT.length, mem[ceil32(return_data.size) + 356 len 32 * joeToUSDT.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        require ext_code.size(wavaxAddress)
        call wavaxAddress.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 356
        while idx < wavaxToUSDT.length:
            mem[t] = wavaxToUSDT[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, wavaxToUSDT.length, mem[ceil32(return_data.size) + 356 len 32 * wavaxToUSDT.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
