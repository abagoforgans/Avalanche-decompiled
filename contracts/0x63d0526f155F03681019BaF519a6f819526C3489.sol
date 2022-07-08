contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 currentlyPaying;
uint256 totalUsers;
uint256 totalWei;
uint256 totalPayout;
uint8 active;
uint8 sub_ee08977c; offset 8
uint256 stor5; offset 8
uint256 sub_517311ea;
uint256 maxBNB;
address devWalletAddress;

function active() {
    return bool(active)
}

function maxBNB() {
    return maxBNB
}

function totalPayout() {
    return totalPayout
}

function currentlyPaying() {
    return currentlyPaying
}

function sub_517311ea(?) {
    return sub_517311ea
}

function totalWei() {
    return totalWei
}

function devWallet() {
    return devWalletAddress
}

function totalUsers() {
    return totalUsers
}

function sub_ee08977c(?) {
    return bool(sub_ee08977c)
}

function _fallback() payable {
    revert
}

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function changeWallet(address arg1) {
    require calldata.size - 4 >= 32
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616e6e6f742063616c6c2066756e6374696f6e20756e6c657373206f776e65,
                    mem[197 len 31]
    devWalletAddress = arg1
}

function sub_6c3e2432(?) {
    require calldata.size - 4 >= 64
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616e6e6f742063616c6c2066756e6374696f6e20756e6c657373206f776e65,
                    mem[197 len 31]
    sub_517311ea = arg1
    maxBNB = arg2
}

function setActive(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616e6e6f742063616c6c2066756e6374696f6e20756e6c657373206f776e65,
                    mem[197 len 31]
    active = uint8(arg1)
    stor5 = Mask(248, 0, arg2)
}

function sub_d4ddc588(?) {
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616e6e6f742063616c6c2066756e6374696f6e20756e6c657373206f776e65,
                    mem[197 len 31]
    stor0.length = 0
    idx = 0
    while 2 * stor0.length > idx:
        stor0[idx].field_0 = 0
        stor0[idx].field_256 = 0
        idx = idx + 2
        continue 
}

function withdrawFunds() {
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616e6e6f742063616c6c2066756e6374696f6e20756e6c657373206f776e65,
                    mem[197 len 31]
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x725468697320636f6e7472616374206d757374206861766520612062616c616e652061626f7665207a6572,
                    mem[207 len 21]
    call devWalletAddress with:
       value eth.balance(this.address) wei
         gas 30000 wei
}



}
