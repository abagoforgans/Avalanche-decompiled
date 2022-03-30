contract main {




// =====================  Runtime code  =====================


const balanceCYCLE = ext_call.return_data[0]

const balanceWAVAX = ext_call.return_data[0]

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5


address owner;
uint32 stor1;
address sub_3bf65663Address;
uint256 stor1;
address proxyAddress;
uint256 emission;

function sub_3bf65663(?) {
    return address(sub_3bf65663Address)
}

function emission() {
    return emission
}

function owner() {
    return owner
}

function Proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEmission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emission = arg1
    emit EmissionUpdated(arg1);
}

function setProxy(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    proxyAddress = arg1
    emit ProxyUpdated(proxyAddress);
}

function setAVAXRewards(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_3bf65663Address) = arg1
    emit AVAXRewardsUpdated(address(sub_3bf65663Address));
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function clearRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function process() {
    if proxyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c50726f636573736f7256343a2043616c6c6572206d757374206265207468652050726f78,
                    mem[201 len 27]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    if eth.balance(this.address) > 0:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(sub_3bf65663Address))
    call address(sub_3bf65663Address).0x3c6b16ab with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    if ext_call.return_data[0] < emission:
        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardsProcessed(ext_call.return_data[0]);
    else:
        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
             gas gas_remaining wei
            args emission
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
             gas gas_remaining wei
            args emission
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardsProcessed(emission);
}



}
