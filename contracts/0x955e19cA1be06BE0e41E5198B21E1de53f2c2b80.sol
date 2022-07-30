contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address investTokenAddress;
address treasuryAddress;
address launchTokenAddress;
address sub_e545338cAddress;
uint256 sub_8a5396a3;
uint256 startTime;
uint8 saleEnabled;
uint8 sub_7f6498d4; offset 8
uint8 sub_31ffd6f1; offset 16
uint8 sub_d2f82536; offset 24
uint256 stor8; offset 24
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 stor8;
uint256 sub_bc284c5c;
uint256 sub_73bbe30c;
uint256 sub_e3616bec;
uint256 sub_7eaaddc5;
uint256 sub_1b6cf7cf;
uint256 sub_66785917;
uint256 sub_9c29f40b;
uint256 sub_0114143d;
uint256 numWhitelisted;
uint256 sub_861d8e13;
uint256 sub_22e27403;
uint256 sub_a4197afc;
uint256 sub_0f2594bc;
uint256 whitelistPrice;
uint256 publicPrice;
mapping of uint8 stor24;
mapping of uint8 stor25;
mapping of struct sub_f703f36f;

function sub_0114143d(?) payable {
    return sub_0114143d
}

function sub_0f2594bc(?) payable {
    return sub_0f2594bc
}

function sub_1b6cf7cf(?) payable {
    return sub_1b6cf7cf
}

function sub_22e27403(?) payable {
    return sub_22e27403
}

function sub_31ffd6f1(?) payable {
    return bool(sub_31ffd6f1)
}

function numWhitelisted() payable {
    return numWhitelisted
}

function treasury() payable {
    return treasuryAddress
}

function sub_66785917(?) payable {
    return sub_66785917
}

function sub_6f0e44ef(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor25[arg1])
}

function saleEnabled() payable {
    return bool(saleEnabled)
}

function sub_73bbe30c(?) payable {
    return sub_73bbe30c
}

function startTime() payable {
    return startTime
}

function sub_7eaaddc5(?) payable {
    return sub_7eaaddc5
}

function sub_7f6498d4(?) payable {
    return bool(sub_7f6498d4)
}

function sub_861d8e13(?) payable {
    return sub_861d8e13
}

function sub_8a5396a3(?) payable {
    return sub_8a5396a3
}

function owner() payable {
    return owner
}

function sub_9c29f40b(?) payable {
    return sub_9c29f40b
}

function launchToken() payable {
    return launchTokenAddress
}

function sub_a4197afc(?) payable {
    return sub_a4197afc
}

function publicPrice() payable {
    return publicPrice
}

function investToken() payable {
    return investTokenAddress
}

function sub_bc284c5c(?) payable {
    return sub_bc284c5c
}

function sub_d2f82536(?) payable {
    return bool(sub_d2f82536)
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor24[arg1])
}

function sub_e3616bec(?) payable {
    return sub_e3616bec
}

function sub_e545338c(?) payable {
    return sub_e545338cAddress
}

function sub_f703f36f(?) payable {
    require calldata.size - 4 >= 32
    return sub_f703f36f[arg1].field_0, 
           sub_f703f36f[arg1].field_256,
           sub_f703f36f[arg1].field_512,
           sub_f703f36f[arg1].field_768,
           bool(sub_f703f36f[arg1].field_1024)
}

function whitelistPrice() payable {
    return whitelistPrice
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function sub_8bc1f9ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    startTime = arg1
}

function sub_167d341f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_73bbe30c = arg1
}

function sub_30037edd(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_1b6cf7cf = arg1
}

function sub_49dfcc02(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_9c29f40b = arg1
}

function sub_bf3b980f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_e3616bec = arg1
}

function sub_df63d1a9(?) payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    Mask(248, 0, stor8.field_8) = Mask(248, 0, not sub_7f6498d4)
}

function sub_59eda1b5(?) payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    Mask(240, 0, stor8.field_16) = Mask(240, 0, not sub_31ffd6f1)
}

function sub_604a85da(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    launchTokenAddress = arg1
}

function sub_e25af19e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor25[address(arg1)] = 0
}

function setWithdrawAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    treasuryAddress = arg1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor24[address(arg1)] = 0
}

function toggleSale() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    uint256(stor8.field_0) = not saleEnabled or Mask(248, 8, uint256(stor8.field_0))
}

function sub_79c6fd71(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not stor25[address(arg1)]:
        numWhitelisted++
    stor25[address(arg1)] = 1
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not stor24[address(arg1)]:
        numWhitelisted++
    stor24[address(arg1)] = 1
}

function enableRedeem() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not launchTokenAddress:
        revert with 0, 'launch token not set'
    Mask(232, 0, stor8.field_24) = Mask(232, 0, not sub_d2f82536)
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function sub_ff16e750(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function sub_2e462287(?) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        revert with 0, 'Can Only Be Run by treasury'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function sub_f9fd3ba2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function withdrawTreasury(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function sub_5867509e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if investTokenAddress == arg1:
        revert with 0, 'Can not withdraw invest token.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function sub_583804c6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        if not stor25[address(cd[((32 * idx) + cd[4] + 36)])]:
            numWhitelisted++
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 25
        stor25[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        if not stor24[address(cd[((32 * idx) + cd[4] + 36)])]:
            numWhitelisted++
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 24
        stor24[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_543aa1b2(?) payable {
    require calldata.size - 4 >= 32
    if not sub_7f6498d4:
        revert with 0, 'not enabled yet'
    if bool(stor25[msg.sender]) != 1:
        revert with 0, 'not whitelisted - vc'
    if arg1 + sub_0114143d > sub_9c29f40b:
        revert with 0, 'above all cap - vc'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    require ext_code.size(sub_e545338cAddress)
    call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_0f2594bc / 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a4197afc += arg1 * sub_0f2594bc / 10^6
    sub_8a5396a3 += arg1
    sub_0114143d += arg1
    if not sub_f703f36f[msg.sender].field_0:
        sub_861d8e13++
    sub_f703f36f[msg.sender].field_0 += arg1
    sub_f703f36f[msg.sender].field_256 += arg1
    emit Invest(msg.sender, arg1);
}

function redeem() payable {
    if not sub_d2f82536:
        revert with 0, 'redeem not enabled'
    require ext_code.size(sub_e545338cAddress)
    staticcall sub_e545338cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no amount issued'
    if sub_f703f36f[msg.sender].field_1024:
        revert with 0, 'already claimed'
    require ext_code.size(sub_e545338cAddress)
    call sub_e545338cAddress.redeem(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_22e27403 += ext_call.return_data[0]
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    sub_f703f36f[msg.sender].field_1024 = 1
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        revert with 0, 'not started yet'
    if not saleEnabled:
        revert with 0, 'not enabled yet'
    if arg1 < sub_bc284c5c:
        revert with 0, 'Below min investment'
    if not sub_31ffd6f1:
        if arg1 + sub_66785917 > sub_1b6cf7cf:
            revert with 0, 'above all cap - public'
    else:
        if sub_f703f36f[msg.sender].field_512 + arg1 > sub_73bbe30c:
            revert with 0, 'above single cap - whitelist'
        if arg1 + sub_7eaaddc5 > sub_e3616bec:
            revert with 0, 'above all cap - whitelist'
        if bool(stor24[msg.sender]) != 1:
            revert with 0, 'not whitelisted'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    if not sub_31ffd6f1:
        sub_f703f36f[msg.sender].field_768 += arg1
        sub_66785917 += arg1
        require ext_code.size(sub_e545338cAddress)
        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1 * publicPrice / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_a4197afc += arg1 * publicPrice / 10^6
    else:
        sub_f703f36f[msg.sender].field_512 += arg1
        sub_7eaaddc5 += arg1
        require ext_code.size(sub_e545338cAddress)
        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1 * whitelistPrice / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_a4197afc += arg1 * whitelistPrice / 10^6
    sub_8a5396a3 += arg1
    if not sub_f703f36f[msg.sender].field_0:
        sub_861d8e13++
    sub_f703f36f[msg.sender].field_0 += arg1
    emit Invest(msg.sender, arg1);
}



}
