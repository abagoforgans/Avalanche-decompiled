contract main {




// =====================  Runtime code  =====================


#
#  - process()
#
const balanceCYCLE = ext_call.return_data[0]

const balanceWAVAX = ext_call.return_data[0]

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


uint8 paused; offset 160
uint128 stor1; offset 160
address owner;
array of address sub_24cc0766;
uint256 dailyEmission;
uint256 sub_4c689868;
uint256 sub_0214cf78;
uint256 sub_f983ab5b;

function sub_0214cf78(?) {
    return sub_0214cf78
}

function sub_24cc0766(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_24cc0766.length
    return sub_24cc0766[arg1]
}

function sub_4c689868(?) {
    return sub_4c689868
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function dailyEmission() {
    return dailyEmission
}

function sub_f983ab5b(?) {
    return sub_f983ab5b
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

function sub_233750e1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dailyEmission = arg1
    emit 0xbd437c62: arg1
}

function sub_0ad5cbc3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0214cf78 = arg1
    emit 0xe44bcea6: sub_0214cf78
}

function sub_e4b82fec(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f983ab5b = arg1
    emit 0x18ef4fe8: sub_f983ab5b
}

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        stor1 = 0
        emit Unpaused(msg.sender);
    else:
        stor1 = 1
        emit Paused(msg.sender);
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
    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x58416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
